###
# This program reads creates REST JSON format from JS JSON format.
###

require 'json'

module SpecMaker

	# Load the structure
	JSON_STRUCTURE = "../jsonFiles/template/restresource_structures.json"
	JSON_SOURCE_FOLDER = "../jsonFiles/js/"
	REST_SOURCE_FOLDER = "../jsonFiles/rest/"

	@struct = JSON.parse(File.read(JSON_STRUCTURE, :encoding => 'UTF-8'), {:symbolize_names => true})
	@template = @struct[:object]
	@property = @struct[:property]
	@method = @struct[:method]
	@parameter = @struct[:parameter]
	@enum = @struct[:enum]
	@enumvalue = @struct[:enumvalue]	


	ENUMS = '../jsonFiles/settings/enums.json'
	ENUMS_REST = '../jsonFiles/settings/restenums.json'

	@iRest = 0
	# Deep copy	   
	def self.deep_copy(o)
	  Marshal.load(Marshal.dump(o))
	end

	@enumHash = {}
	@newEnum = {}
	begin
		@enumHash = JSON.parse(File.read(ENUMS), {:symbolize_names => true})
	rescue => err
		@logger.warn("JSON Enumeration input file doesn't exist")
	end

	@enumHash.each do |key, item|
		enum = deep_copy(@enum)

		item.keys.each do |k|			
			enumval = deep_copy(@enumvalue)
			enumval[:description] = item[k]
			enum[:options][k] = enumval
		end
		@newEnum[key.to_sym] = enum
	end

	File.open(ENUMS_REST, "w") do |f|
		f.write(JSON.pretty_generate @newEnum, :encoding => 'UTF-8')
	end


	# Conversion to specification 
	@jsonHash = nil
	@restHash = nil

	def self.convert_to_spec (item=nil)	 
		@jsHash = JSON.parse(item, {:symbolize_names => true})

		@restHash = deep_copy(@template)
		@restHash[:name] = @jsHash[:name]
		@restHash[:description] = @jsHash[:description]
		@restHash[:collectionOf] = @jsHash[:collectionOf]

		if @jsHash[:restPath]
			@jsHash[:restPath].each do |path|
				path = path.gsub("{", "<")
				path = path.gsub("}", ">")
				@restHash[:restPath][path] = true
			end
		end

		if @jsHash[:properties] && !@jsHash[:isCollection]
			@jsHash[:properties].each do |item|
				restItem = deep_copy(@property)
				restItem[:name] = item[:name]
				restItem[:dataType] = item[:dataType]
				if restItem[:dataType] == 'object[][]'
					restItem[:dataType] = 'json'
				end
				if restItem[:dataType] == 'bool'
					restItem[:dataType] = 'boolean'
				end				
				restItem[:description] = item[:description]
				restItem[:description] = restItem[:description].chomp('Read-Only.')
				restItem[:isReadOnly] = item[:isReadOnly]
				restItem[:enumName] = item[:enumNameJs]
				restItem[:isCollection] = item[:isCollection]
				restItem[:isRelationship] = item[:isRelationship]
				restItem[:isKey] = item[:isKey]
				if restItem[:isCollection]
					restItem[:dataType] = item[:dataType].chomp('Collection')
				end

				@restHash[:properties].push restItem
			end		
		end

		if @jsHash[:methods]
			@jsHash[:methods].each do |item|
				if item[:restfulName] && item[:restfulName] != 'Item'
					restItem = deep_copy(@method)
					restItem[:name] = item[:restfulName]
					restItem[:returnType] = item[:returnType]
					restItem[:returnType] = nil if restItem[:returnType] == 'void'
					restItem[:description] = item[:description]
					restItem[:httpSuccessCode] = "200"
					if item[:parameters]	
						item[:parameters].each do |parm|
							parameter = deep_copy(@parameter)
							parameter[:name] = parm[:name]
							parameter[:dataType] = parm[:dataType]
							if parameter[:dataType] == 'Range'
								parameter[:dataType] = 'string'
							end
							if parameter[:dataType] == 'Range or string'
								parameter[:dataType] = 'string'
							end
							if parameter[:dataType] == 'bool'
								parameter[:dataType] = 'boolean'
							end
							parameter[:dataType] = parameter[:dataType].chomp('[]')
							parameter[:dataType] = parameter[:dataType].chomp('[]')
							parameter[:description] = parm[:description]

							parameter[:description] = parm[:description].gsub('(Optional) ', '')
							
							parameter[:isCollection] = parm[:isCollection]
							parameter[:isRequired] = parm[:isRequired]
							parameter[:enumName] = parm[:enumNameJs]
							restItem[:parameters].push parameter
						end	
					end
					@restHash[:methods].push restItem
				end
			end		
		end

		File.open("#{REST_SOURCE_FOLDER}#{(@jsHash[:name]).downcase}.json", "w") do |f|
			f.write(JSON.pretty_generate @restHash, :encoding => 'UTF-8')
		end		
		GC.start
		@iRest = @iRest + 1

	end

	##### 
	# Main loop. Process each JSON files.
	# 
	###
	processed_files = 0
	Dir.foreach(JSON_SOURCE_FOLDER) do |item|
		next if item == '.' or item == '..'
		fullpath = JSON_SOURCE_FOLDER + item.downcase
		
		if File.file?(fullpath)
			puts "-> #{fullpath}"
			convert_to_spec File.read(fullpath, :encoding => 'UTF-8')
			processed_files = processed_files + 1
		end
	end
	
	## 

	puts ""
	puts "files created: #{@iRest}"
end
