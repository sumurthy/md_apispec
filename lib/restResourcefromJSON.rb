###
# This program reads the JSON specification files and creates the Markdown files (minus the examples). 
# Location: https://github.com/sumurthy/md_apispec
###
require 'pathname'
require 'logger'
require 'json'

module SpecMaker

	# Initialize 
	# JSON_SOURCE_FOLDER = "../../inputJsonFiles"	
	JSON_SOURCE_FOLDER = "c:/Users/suramam/git/wip/lib/jsonFiles"
	ENUMS = JSON_SOURCE_FOLDER + '/settings/enums.json'
	MARKDOWN_OUTPUT_FOLDER = "../../outputMarkdownsRest/resources/"
	EXAMPLES_FOLDER = "../../rest-api-examples-to-merge/"
	HEADER1 = '# '
	HEADER2 = '## '
	HEADER3 = '### '
	HEADER4 = '#### '
	HEADER5 = '##### '
	BACKTOMETHOD = '[Back](#methods)'
	NEWLINE = "\n"
	BACKTOPROPERTY = NEWLINE + '[Back](#properties)'
	PIPE = '|'
	TWONEWLINES = "\n\n"
	PROPERTY_HEADER = "| Property	   | Type	|Description|" + NEWLINE
	TABLE_2ND_LINE =  "|:---------------|:--------|:----------|" + NEWLINE
	PARAM_HEADER = "| Parameter	   | Type	|Description|" + NEWLINE
	TABLE_2ND_LINE_PARAM =  "|:---------------|:--------|" + NEWLINE

	RELATIONSHIP_HEADER = "| Relationship | Type	|Description|" + NEWLINE
	TASKS_HEADER = "| Task		   | Return Type	|Description|" + NEWLINE
	SIMPLETYPES = %w[int string object object[][] double bool number void object[]]

	SKIP_TASKS = %w[getItem getItemAt load]
	# Log file
	LOG_FOLDER = '../../logs'
	Dir.mkdir(LOG_FOLDER) unless File.exists?(LOG_FOLDER)

	if File.exists?("#{LOG_FOLDER}/#{$PROGRAM_NAME.chomp('.rb')}.txt")
		File.delete("#{LOG_FOLDER}/#{$PROGRAM_NAME.chomp('.rb')}.txt")
	end
	@logger = Logger.new("#{LOG_FOLDER}/#{$PROGRAM_NAME.chomp('.rb')}.txt")
	@logger.level = Logger::DEBUG
	# End log file

	# Create markdown folder if it doesn't already exist
	Dir.mkdir(MARKDOWN_OUTPUT_FOLDER) unless File.exists?(MARKDOWN_OUTPUT_FOLDER)	

	if !File.exists?(JSON_SOURCE_FOLDER)
		@logger.fatal("JSON Resource File folder does not exist. Aborting")
		abort("*** FATAL ERROR *** Input JSON resource folder: #{JSON_SOURCE_FOLDER} doesn't exist. Correct and re-run." )
	end

	if !File.exists?(EXAMPLES_FOLDER)
		@logger.warn("API examples folder does not exist")
	end		

	## 
	# Load up all the known existing enums.
	###
	@enumHash = {}
	begin
		@enumHash = JSON.parse File.read(ENUMS)
	rescue => err
		@logger.warn("JSON Enumeration input file doesn't exist: #{@current_object}")
	end

	@mdlines = []
	@resource = ''
	@gsType = ''

	def self.uncapitalize (str="")
		if str.length > 0
			str[0, 1].downcase + str[1..-1]
		else
			str
		end
	end

	# Write properties and methods to the final array.
	def self.push_property  (prop = {})
		# Add read-only and possible Enum values from the list. 
		
		finalDesc = prop[:isReadOnly] ? prop[:description]  + ' Read-only.' : prop[:description]
		appendEnum = ''
		if (prop[:enumNameJs] != nil) && (@enumHash.has_key? prop[:enumNameJs])
			if @enumHash[prop[:enumNameJs]].values[0] == "" || @enumHash[prop[:enumNameJs]].values[0] == nil
				appendEnum = " Possible values are: " + @enumHash[prop[:enumNameJs]].keys.join(', ') + "."
			else
				appendEnum = " Possible values are: " + @enumHash[prop[:enumNameJs]].map{|k,v| "`#{k}` #{v}"}.join(',') 
			end
			finalDesc = finalDesc + appendEnum
		end

		# If the type is of	an object, then provide markdown link.
		if SIMPLETYPES.include? prop[:dataType] 	
			dataTypePlusLink = prop[:dataType] 	
		else			
			dataTypePlusLink = "[" + prop[:dataType] + "](" + prop[:dataType].downcase + ".md)"
		end

		if prop[:isCollection] 
			dataTypePlusLink = "[" + prop[:dataType] + "](" + prop[:dataType].chomp('[]').downcase + ".md)"
		end
			
		@mdlines.push (PIPE + prop[:name] + PIPE + dataTypePlusLink + PIPE + finalDesc + PIPE ) + NEWLINE
	end

	# Write methods to the final array.
	def self.push_method (method = {})
		# Skip JS methods
		if SKIP_TASKS.include? method[:name] 	
			return
		end
		# If the type is of	an object, then provide markdown link.
		if SIMPLETYPES.include? method[:returnType]
			dataTypePlusLink = method[:returnType]
		else			
			dataTypePlusLink = "[" + method[:returnType] + "](" + method[:returnType].downcase + ".md)"
		end
		dataTypePlusLink = (dataTypePlusLink == 'void') ? 'None' : dataTypePlusLink

		# Add anchor links to method. 
		str = method[:signature].strip
		replacements = [ [" ", "-"], ["[", ""], ["]", ""],["(", ""], [")", ""], [",", ""], [":", ""] ]				
		replacements.each {|replacement| str.gsub!(replacement[0], replacement[1])}
		restfulTask = method[:name].start_with?('get') ? ('Get ' + method[:restfulName]) : method[:name]
		methodPlusLink = "[" + restfulTask.strip.capitalize + "](#" + str.downcase + ")"
		@mdlines.push (PIPE + methodPlusLink + PIPE + dataTypePlusLink + PIPE + method[:description] + PIPE) + NEWLINE
	end

	# Conversion to specification 
	def self.convert_to_spec (item=nil)
		@mdlines = []
		@jsonHash = JSON.parse(item, {:symbolize_names => true})
		# Obtain the resource name. Read the examples file, if it exists. 
		@resource = uncapitalize(@jsonHash[:name])
		@logger.debug("")	
		@logger.debug("...............Report for: #{@resource}...........")	

		propreties = @jsonHash[:properties]

		if propreties != nil && propreties.length > 1 
			propreties = propreties.sort_by { |v| v[:name] }
		end
		methods = @jsonHash[:methods]
		if methods != nil && methods.length > 1 
			methods = methods.sort_by { |v| v[:name] }
		end

		# Header and description		
		@mdlines.push HEADER1 + @jsonHash[:name] + TWONEWLINES
		@mdlines.push @jsonHash[:description] + TWONEWLINES

		# Determine if there is/are: relations, properties and methods. 
		isRelation, isProperty, isMethod, patchable = false, false, false, false 

		if propreties 
			propreties.each do |prop|
				if !prop[:isRelationship]
				   isProperty = true
				   if !prop[:isReadOnly]
				   	  patchable = true
				   end
				end
				if prop[:isRelationship]			  
				   isRelation = true
				end
			end
		end

		if methods 
			isMethod = true
		end

		@logger.debug("....Is there: property?: #{isProperty}, relationship?: #{isRelation}, method?: #{isMethod} ..........")	

		# Add property table. 	
		if isProperty
			@mdlines.push HEADER2 + 'Properties' + NEWLINE
			
			@mdlines.push PROPERTY_HEADER + TABLE_2ND_LINE 
			propreties.each do |prop|
				if !prop[:isRelationship]
					@logger.debug("....Processing property: #{prop[:name]} ..........")	
				   push_property prop
				end
			end
		else
			@mdlines.push "None"  + NEWLINE
		end		

		# Add Relationship table. 
		@mdlines.push NEWLINE
		@mdlines.push HEADER2 + 'Relationships' + NEWLINE


		if isRelation
			@mdlines.push RELATIONSHIP_HEADER + TABLE_2ND_LINE 
			propreties.each do |prop|
				if prop[:isRelationship]
					@logger.debug("....Processing relationship: #{prop[:name]} ..........")		
				   push_property prop
				end
			end
		else
			@mdlines.push "None"  + TWONEWLINES
		end		

		# Add method table. 

		@mdlines.push NEWLINE + HEADER2 + 'Tasks' + NEWLINE

		if isMethod || isProperty 
			@mdlines.push NEWLINE + TASKS_HEADER + TABLE_2ND_LINE 
			if isProperty
				if @jsonHash[:isCollection]
					@mdlines.push "| List | #{@jsonHash[:collectionOf]}[]|Get #{uncapitalize @jsonHash[:collectionOf]} object collection. |" + NEWLINE
				else
					@mdlines.push "| Get metadata | #{@jsonHash[:name]} |Read properties and relationships of #{uncapitalize @jsonHash[:name]} object.|" + NEWLINE
				end
			end
			if patchable
				@mdlines.push "| Update | #{@jsonHash[:name]}	|Update #{uncapitalize @jsonHash[:name]} object. |" + NEWLINE
			end
		end

		if isMethod
			methods.each do |mtd|
				@logger.debug("....Processing method: #{mtd[:name]} ..........")						
				push_method mtd
			end
		else
			@mdlines.push "None"  + TWONEWLINES
		end	

		# Write the output file. 
		outfile = MARKDOWN_OUTPUT_FOLDER + @resource.downcase + '.md'
		file=File.new(outfile,'w')
		@mdlines.each do |line|
			file.write line
		end
	end

	# Main loop. 
	processed_files = 0
	Dir.foreach(JSON_SOURCE_FOLDER) do |item|
		next if item == '.' or item == '..'
		fullpath = JSON_SOURCE_FOLDER + '/' + item.downcase

		if File.file?(fullpath)
			convert_to_spec File.read(fullpath)
			processed_files = processed_files + 1
		end
	end
	puts ""
	puts "*** OK. Processed #{processed_files} input files. Check #{File.expand_path(LOG_FOLDER)} folder for results. ***"
end