# md_apispec
Generate API specification in markdown from a JSON template.

This library provides:

* A JSON file template that can be used to describe object properties, methods, etc.
* A command line program that uses the JSON file(s) to generate the markdown API specification. If you wish to include examples for APIs, a template to include the examples is listed as part of the repository. 

## Usage

### Step-1: Copy the repository
* Install Ruby v > 2.0. 
* Fork and clone the repository. 

### Step-2: Know the input and output location

Program name: 
* `{local_directory}/md_apispec/lib/jsMarkdownFromJSON.rb` 

Input files location with relation to the program file: 

* `{local_directory}/md_apispec/inputJsonFiles/*.json` (Required. One JSON file per resource. Refer to inputJsonFiles for a sample.)
* `{local_directory}/md_apispec/inputJsonFiles/settings/enums.json` (optiional. Needed for enum value expansion the description and data-type override for enum parameters/properties.)
* `{local_directory}/md_apispec/js-api-examples-to-merge/*.md` (optional. The file name (not the extension) should match the resource file name. Example: worksheet.json and worksheet.md)

Output files location with relation to the program file: 

* `{local_directory}/md_apispec/outputMarkdowns` (this is where the output markdown spec is generated. The output file name matches the resource name. Example: worksheet.md)
* `{local_directory}/md_apispec/logs/*_log.txt` (single log file with warning, debug and error messages. File name matches the program name.)

### Step-3: Provide input files

* Fill out the JSON source files, enums JSON file, and examples .md files in the correct locations. 
* Change directory to lib/ (inside repository folder)

### Step-4: Run and examine output

* Run the command `generateJsMarkdowns` at the command prompt (Windows OS) or `ruby jsMarkdownFromJSON.rb` (*nix). 
* Examine the output folder.

## Version
0.9

## Pending changes
* Provide unit tests.
* Support REST APIs (will impact JSON template).
* Post run report (in addition to log file). 
*





