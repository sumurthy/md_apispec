###
# This program reads creates REST JSON format from JS JSON format.
###

require 'json'

module SpecMaker

	# Load the structure
	JSON_STRUCTURE = "../../rest_spec/jsonFiles/template/restresource_structures.json"
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
	ENUMS_REST = '../jsonFiles/settings/enums_rest.json'

	@iRest = 0
	# Deep copy	   
	def self.deep_copy(o)
	  Marshal.load(Marshal.dump(o))
	end

	@enumHash = {}
	@newEnum = {}
	begin
		@enumHash = JSON.parse (File.read(ENUMS), {:symbolize_names => true})
	rescue => err
		@logger.warn("JSON Enumeration input file doesn't exist")
	end

	@enumHash.each do |key, item|
		enum = deep_copy(@enum)

		item.keys.each do |k|			
			enumval = deep_copy(@enumvalue)
			enumval[:description] = item["k"]
			enum[:options] = enumval
		end
		@newEnum[key] = enum
	end

	puts @newEnum

	# Conversion to specification 
	@jsonHash = nil
	@restHash = nil

	def self.convert_to_spec (item=nil)	 
		@jsHash = JSON.parse(item, {:symbolize_names => true})

		@restHash = deep_copy(@template)
		@restHash[:name] = @jsHash[:name]
		@restHash[:description] = @jsHash[:description]
		@restHash[:collectionOf] = @jsHash[:collectionOf]

		@jsHash[:restPath].each do |path|
			path = path.gsub("{", "<")
			path = path.gsub("}", ">")
			@restHash[:restPath][path] = true
		end

		if @jsHash[:properties]
			@jsHash[:properties].each do |item|
				restItem = deep_copy(@property)
				restItem[:name] = item[:name]
				restItem[:dataType] = item[:dataType]
				restItem[:description] = item[:description]
				restItem[:isReadOnly] = item[:isReadOnly]
				restItem[:enumName] = item[:enumNameJs]
				restItem[:isCollection] = item[:isCollection]
				restItem[:isRelationship] = item[:isRelationship]
				restItem[:isKey] = item[:isKey]
				@restHash[:properties].push restItem
			end		
		end

		if @jsHash[:methods]
			@jsHash[:methods].each do |item|
				if item[:restfulName]
					restItem = deep_copy(@method)
					restItem[:name] = item[:restfulName]
					restItem[:returnType] = item[:returnType]
					restItem[:description] = item[:description]
					if item[:parameters]	
						item[:parameters].each do |parm|
							parameter = deep_copy(@parameter)
							parameter[:name] = parm[:name]
							parameter[:dataType] = parm[:dataType]
							parameter[:description] = parm[:description]
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
