require 'active_support'
require 'active_support/core_ext'
require 'json'

module SpecMaker
	JSON_BASE_FOLDER = "../jsonFiles/"
	JSON_SOURCE_FOLDER = "../jsonFiles/rest/"
	ENUMS = JSON_BASE_FOLDER + 'settings/restenums.json'
	CSDL_LOCATION = "../../data/tasks.xml"

	# Load the template 
	JSON_TEMPLATE = "../jsonFiles/template/restresourcetemplate.json"
	@template = JSON.parse(File.read(JSON_TEMPLATE), {:symbolize_names => true})

	# Load the structure
	JSON_STRUCTURE = "../jsonFiles/template/restresource_structures.json"
	@struct = JSON.parse(File.read(JSON_STRUCTURE), {:symbolize_names => true})
	
	@enum_objects = {}
	# Read and load the CSDL file
	f=File.read(CSDL_LOCATION)
	csdl=JSON.parse(Hash.from_xml(f).to_json, {:symbolize_names => true}) 

	#JSON.pretty_generate()
	#File.write('onedrive.json',j)

	# Get to the schema node
	schema = csdl[:Edmx][:DataServices][:Schema]


	schema[:EnumType].each do |item|
		enum = {}
		if item[:IsFlags] 
			enum[:isExclusive] = false
		else
			enum[:isExclusive] = true
		end
		enum[:options] = {}
		item[:Member].each do |member|
			entry = {}
			entry[:value] = member[:Value]
			entry[:description] = ""
			enum[:options][member[:Name].to_sym] = entry
		end	
		@enum_objects[item[:Name].to_sym] = enum
	end


	File.open(ENUMS, "w") do |f|
		f.write(JSON.pretty_generate @enum_objects)
	end

	# Refresh the json object


	# For each entity, write the property node
	schema[:EntityType].each do |entity|

		@json_object = Hash.new
		puts "!!1 #{@json_object.length} #{@template[:properties]}"
		@json_object = @template.dup
		@json_object[:properties] = []
		puts "!!2 #{@json_object.length} #{@json_object[:properties].length}"		
		@json_object[:name] = entity[:Name]
		puts 		
		
		if entity[:Key][:PropertyRef].is_a?(Hash)

			key_save = entity[:Key][:PropertyRef][:Name]

		elsif entity[:Key][:PropertyRef].is_a?(Array)
			
			key_save = ""
			
			entity[:Key][:PropertyRef].each do |innerItem|
				key_save = innerItem[:Name]
			end

		end
		
		prop = {}

		puts "#{entity[:Name]} :  #{@json_object[:properties].length}"
		puts "----"
		entity[:Property].each do |item|		
			prop = @struct[:property].dup
			prop[:name] = item[:Name]
			dt = item[:Type][(item[:Type].rindex('.') + 1)..-1]
			prop[:dataType] = dt
			prop[:enumNameJs] = dt if @enum_objects.has_key?(dt.to_sym) 
			prop[:isCollection] = true if dt.end_with?('Collection')
			prop[:isKey] = true if item[:Name].include?(key_save)
			prop[:isRelationship] = false
			@json_object[:properties].push prop
		end

		File.open("#{JSON_SOURCE_FOLDER}#{(@json_object[:name]).downcase}.json", "w") do |f|
			f.write(JSON.pretty_generate @json_object)
		end

	end
end