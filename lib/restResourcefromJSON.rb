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
	MARKDOWN_RESOURCE_FOLDER = "../../outputMarkdownsRest/resources/"
	MARKDOWN_API_FOLDER = "../../outputMarkdownsRest/api/"
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
	TABLE_2ND_LINE_PARAM =  "|:---------------|:--------|:-----------|" + NEWLINE

	RELATIONSHIP_HEADER = "| Relationship | Type	|Description|" + NEWLINE
	TASKS_HEADER = "| Task		   | Return Type	|Description|" + NEWLINE
	SIMPLETYPES = %w[int string object object[][] double bool number void object[]]
	SKIP_TASKS = %w[getItem getItemAt load]

	@resources_files_created = 0
	@get_list_files_created = 0
	@patch_files_created = 0
	@method_files_created = 0

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
	Dir.mkdir(MARKDOWN_RESOURCE_FOLDER) unless File.exists?(MARKDOWN_RESOURCE_FOLDER)	

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
				appendEnum = " Possible values are: `" + @enumHash[prop[:enumNameJs]].keys.join('`, `') + "`."
			else
				appendEnum = " Possible values are: `" + @enumHash[prop[:enumNameJs]].map{|k,v| "`#{k}` #{v}"}.join(',') 
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

	# Write methods to the final array (in resource file).
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
		restfulTask = method[:name].start_with?('get') ? ('Get ' + method[:restfulName]) : method[:name].capitalize
		methodPlusLink = "[" + restfulTask.strip + "](../api/" + @jsonHash[:name].downcase + "_" + method[:name].downcase + ".md)"
		@mdlines.push (PIPE + methodPlusLink + PIPE + dataTypePlusLink + PIPE + method[:description] + PIPE) + NEWLINE
		create_action_and_function method
	end

	# Create separate actions and functions file 
	def self.create_action_and_function (method = {})
		actionLines = []
		
		# Header and description	
		actionLines.push HEADER1 + "#{@jsonHash[:name]}: #{method[:restfulName]}"  + TWONEWLINES
		actionLines.push "#{method[:description]}"  + NEWLINE

		# HTTP request
		actionLines.push HEADER2 + "HTTP request" + NEWLINE
		actionLines.push '```http' + NEWLINE
		if method[:name].start_with?('get')
			httpActionArray = @jsonHash[:restPath].map {|a| "GET " + a + "/#{method[:name]}"}
		else
			if method[:name] == 'delete' && !method[:parameters]  
				puts "#{method[:name]} -- #{method[:parameters]} #{@jsonHash[:name]}"
				httpActionArray = @jsonHash[:restPath].map {|a| "DELETE " + a + "/#{method[:name]}"}
			else
				httpActionArray = @jsonHash[:restPath].map {|a| "POST " + a + "/#{method[:name]}"}				
			end
		end
		actionLines.push httpActionArray.join("\n") + NEWLINE
		actionLines.push  '```' + TWONEWLINES

		#Request headers  
		if method[:name].start_with?('get')
		else
			actionLines.push HEADER2 + "Optional request headers" + NEWLINE
			actionLines.push "| Name       | Type | Description|" + NEWLINE
			actionLines.push "|:-----------|:------|:----------|" + NEWLINE
			actionLines.push "| x-session-token   | string  | The edit session token required to join the edit session maintained by Excel server. Refer to session management API for details.|" + NEWLINE
		end
		actionLines.push NEWLINE
		
		#Request body
		actionLines.push HEADER2 + "Request body" + NEWLINE
	
		# Provide parameters: 
		if method[:parameters] !=nil  			
			actionLines.push "In the request body, provide a JSON object that with the following parameters." + TWONEWLINES
			actionLines.push PARAM_HEADER + TABLE_2ND_LINE_PARAM 
			method[:parameters].each do |param|
				# Append optional and enum possible values (if applicable).
				finalPDesc = param[:isRequired] ? param[:description] : 'Optional. ' + param[:description]
				appendEnum = ''
				if (param[:enumNameJs] != nil) && (@enumHash.has_key? param[:enumNameJs])

					if @enumHash[param[:enumNameJs]].values[0] == "" || @enumHash[param[:enumNameJs]].values[0] == nil
						appendEnum = " " + " Possible values are: " + @enumHash[param[:enumNameJs]].keys.join(', ')  
					else
						appendEnum = " Possible values are: " + @enumHash[param[:enumNameJs]].map{|k,v| "`#{k}` #{v}"}.join(',')
					end
					finalPDesc = finalPDesc + appendEnum
				end
				actionLines.push (PIPE + param[:name] + PIPE + param[:dataType] + PIPE + finalPDesc + PIPE) + NEWLINE	
			end
		else
			actionLines.push "Do not supply a request body for this method." + NEWLINE
			actionLines.push NEWLINE
		end

		actionLines.push NEWLINE

		#Respone body
		actionLines.push HEADER2 + "Response" + NEWLINE

		if SIMPLETYPES.include? method[:returnType]
			dataTypePlusLink = method[:returnType]
		else			
			dataTypePlusLink = "[" + method[:returnType] + "](../resources/" + method[:returnType].downcase + ".md)"
		end
		if method[:returnType] == 'void'
			actionLines.push "This method does not return anything in the response body."  + NEWLINE
		else
			actionLines.push "This method returns #{dataTypePlusLink} object in the response body."  + NEWLINE
		end
		#Example
		actionLines.push HEADER2 + "Example" + NEWLINE
		actionLines.push HEADER3 + "HTTP request" + NEWLINE
		actionLines.push HEADER3 + "Response" + NEWLINE

		# Write the output file. 
		fileName = "#{@jsonHash[:name].downcase}_#{method[:name].downcase}.md"
		outfile = MARKDOWN_API_FOLDER + fileName

		file=File.new(outfile,'w')
		actionLines.each do |line|
			file.write line
		end		
		@method_files_created = @method_files_created + 1
	end

	def self.create_get_method
		getMethodLines = []
		# Header and description
		realHeader = @jsonHash[:isCollection] ? ('List ' + @jsonHash[:collectionOf]) : ('Get ' + @jsonHash[:name])
		getMethodLines.push HEADER1 + realHeader + TWONEWLINES

		if @jsonHash[:isCollection] 
			getMethodLines.push "Retrieve a list of #{@jsonHash[:collectionOf].downcase} objects."  + NEWLINE
		else
			getMethodLines.push "Retrieve the properties and relationships of #{@jsonHash[:name].downcase} object."  + NEWLINE
		end

		# HTTP request
		getMethodLines.push HEADER2 + "HTTP request" + NEWLINE
		getMethodLines.push '```http' + NEWLINE
		httpGetArray = @jsonHash[:restPath].map {|a| "GET " + a}
		getMethodLines.push httpGetArray.join("\n") + NEWLINE
		getMethodLines.push  '```' + TWONEWLINES

		#Query parameters 
		getMethodLines.push HEADER2 + "Optional query parameters" + NEWLINE
		getMethodLines.push "You can use the OData query parameters to restrict the shape of the objects returned from this call." + NEWLINE

		# #Optional request headers  
		# getMethodLines.push HEADER2 + "Optional request headers" + NEWLINE
		# getMethodLines.push "| Name       | Type | Description|" + NEWLINE
		# getMethodLines.push "|:-----------|:------|:----------|" + NEWLINE
		# getMethodLines.push "| if-none-match | etag  | If this request header is included and the eTag provided matches the current tag on the file, an `HTTP 304 Not Modified` response is returned. |" + NEWLINE

		#Request body
		getMethodLines.push HEADER2 + "Request body" + NEWLINE
		getMethodLines.push "Do not supply a request body for this method." + NEWLINE

		#Respone body
		getMethodLines.push HEADER2 + "Response" + NEWLINE
		if @jsonHash[:isCollection] 
			getMethodLines.push "This method returns collection of [#{@jsonHash[:collectionOf]}](../resources/#{@jsonHash[:collectionOf].downcase}.md) objects in the response body."  + NEWLINE
		else
			getMethodLines.push "This method returns [#{@jsonHash[:name]}](../resources/#{@jsonHash[:name].downcase}.md) object in the response body."  + NEWLINE
		end

		#Example
		getMethodLines.push HEADER2 + "Example" + NEWLINE
		getMethodLines.push HEADER3 + "HTTP request" + NEWLINE
		getMethodLines.push HEADER3 + "Response" + NEWLINE

		# Write the output file. 
		fileName = @jsonHash[:isCollection] ? "#{@jsonHash[:name].downcase}_list.md" : "#{@jsonHash[:name].downcase}_get.md"
		outfile = MARKDOWN_API_FOLDER + fileName
		file=File.new(outfile,'w')
		getMethodLines.each do |line|
			file.write line
		end
		@get_list_files_created = @get_list_files_created + 1
	end

	def self.create_patch_method (propreties=[])
		patchMethodLines = []

		# Header and description	
		patchMethodLines.push HEADER1 + "Update #{@jsonHash[:name]}"  + TWONEWLINES
		patchMethodLines.push "Update the properties of #{@jsonHash[:name].downcase} object."  + NEWLINE

		# HTTP request
		patchMethodLines.push HEADER2 + "HTTP request" + NEWLINE
		patchMethodLines.push '```http' + NEWLINE
		httpPatchArray = @jsonHash[:restPath].map {|a| "PATCH " + a}
		patchMethodLines.push httpPatchArray.join("\n") + NEWLINE
		patchMethodLines.push  '```' + TWONEWLINES

		#Request headers  
		patchMethodLines.push HEADER2 + "Optional request headers" + NEWLINE
		patchMethodLines.push "| Name       | Type | Description|" + NEWLINE
		patchMethodLines.push "|:-----------|:------|:----------|" + NEWLINE
		patchMethodLines.push "| x-session-token   | string  | The edit session token required to join the edit session maintained by Excel server. Refer to session management API for details.|" + NEWLINE
		patchMethodLines.push NEWLINE
		
		#Request body
		patchMethodLines.push HEADER2 + "Request body" + NEWLINE
		patchMethodLines.push "In the request body, supply the values for relevant fields that should be updated. Existing properties that are not included in the request body will maintain their previous values or be recalculated based on changes to other property values. For best performance you shouldn't include existing values that haven't changed." + NEWLINE
		patchMethodLines.push NEWLINE

		patchMethodLines.push PROPERTY_HEADER + TABLE_2ND_LINE 
		propreties.each do |prop|
			if !prop[:isReadOnly]
		   		finalDesc = prop[:description]
				appendEnum = ''
				if (prop[:enumNameJs] != nil) && (@enumHash.has_key? prop[:enumNameJs])
					if @enumHash[prop[:enumNameJs]].values[0] == "" || @enumHash[prop[:enumNameJs]].values[0] == nil
						appendEnum = " Possible values are: `" + @enumHash[prop[:enumNameJs]].keys.join('`, `') + "`."
					else
						appendEnum = " Possible values are: " + @enumHash[prop[:enumNameJs]].map{|k,v| "`#{k}` #{v}"}.join(',') 
					end
					finalDesc = finalDesc + appendEnum
				end				
				patchMethodLines.push (PIPE + prop[:name] + PIPE + prop[:dataType]  + PIPE + finalDesc + PIPE ) + NEWLINE
			end
		end
		patchMethodLines.push NEWLINE

		#Respone body
		patchMethodLines.push HEADER2 + "Response" + NEWLINE
		patchMethodLines.push "This method returns updated [#{@jsonHash[:name]}](../resources/#{@jsonHash[:name].downcase}.md) object in the response body."  + NEWLINE

		#Example
		patchMethodLines.push HEADER2 + "Example" + NEWLINE
		patchMethodLines.push HEADER3 + "HTTP request" + NEWLINE
		patchMethodLines.push HEADER3 + "Response" + NEWLINE

		# Write the output file. 
		fileName = "#{@jsonHash[:name].downcase}_update.md"  
		outfile = MARKDOWN_API_FOLDER + fileName
		file=File.new(outfile,'w')
		patchMethodLines.each do |line|
			file.write line
		end
		@patch_files_created = @patch_files_created + 1

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
		@mdlines.push HEADER2 + 'Properties' + NEWLINE
		if isProperty
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
					@mdlines.push "| [List](../api/#{@jsonHash[:name].downcase}_list.md) | #{@jsonHash[:collectionOf]}[]|Get #{uncapitalize @jsonHash[:collectionOf]} object collection. |" + NEWLINE
				else
					@mdlines.push "| [Get metadata](../api/#{@jsonHash[:name].downcase}_get.md) | #{@jsonHash[:name]} |Read properties and relationships of #{uncapitalize @jsonHash[:name]} object.|" + NEWLINE
				end
				create_get_method
			end

			if patchable
				@mdlines.push "| [Update](../api/#{@jsonHash[:name].downcase}_update.md) | #{@jsonHash[:name]}	|Update #{uncapitalize @jsonHash[:name]} object. |" + NEWLINE
				create_patch_method propreties
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
		outfile = MARKDOWN_RESOURCE_FOLDER + @resource.downcase + '.md'
		file=File.new(outfile,'w')
		@mdlines.each do |line|
			file.write line
		end
		@resources_files_created = @resources_files_created + 1
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
	puts "*** @resources_files_created #{@resources_files_created}"
	puts "*** @get_list_files_created #{@get_list_files_created} "
	puts "*** @patch_files_created #{@patch_files_created}"
	puts "*** @method_files_created #{@method_files_created}"

end