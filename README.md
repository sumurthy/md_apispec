# md_apispec
Generate API specification in markdown from a JSON template.

This library provides:

* A JSON file template that can be used to describe object properties, methods, etc.
* A command line program that uses the JSON file(s) to generate the markdown API specification. If you wish to include examples for APIs, a template to include the examples is listed as part of the repository. 

## Usage

* Install Ruby v > 2.0. 
* Clone the repository. 
* Fill out the JSON source files, enums JSON file, and examples .md files (if required) in the correct locations. 
* Create directory/folder named `logs` at the same level as the repository. 
* Change directory to lib/ (inside repository folder)
* Run the command `genMarkdown` at the command prompt (Windows OS) or `ruby markdownFromJSON.rb` (*nix). 
* Find the markdowns in markdowns/ folder. 

## Version
0.9

## Pending changes
* Support REST APIs (will impact JSON template) .
* Post run report (in addition to log file). 



