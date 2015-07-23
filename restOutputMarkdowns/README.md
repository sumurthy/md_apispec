# REST APIs

## Objects 

* [Workbook](resources/workbook.md): Workbook is the top level object which contains related workbook objects such as worksheets, tables, ranges, etc. It can be used to list related references. 
* [Worksheet](resources/worksheet.md): The Worksheet object is a member of the Worksheets collection. The Worksheets collection contains all the Worksheet objects in a workbook.
	* [Worksheet Collection](resources/worksheetcollection.md): A collection of all the Workbook objects that are part of the workbook. 
* [Range](resources/range.md): Range represents a cell, a row, a column, a selection of cells containing one or more contiguous blocks of cells.  
* [Table](resources/table.md): Represents collection of organized cells designed to make management of the data easy. 
	* [Table Collection](resources/tablecollection.md): A collection of Tables in a workbook or worksheet. 
	* [TableColumn Collection](resources/tablecolumncollection.md): A collection of all the columns in a Table. 
	* [TableRow Collection](resources/tablerowcollection.md): A collection of all the rows in a Table. 
* [Chart](resources/chart.md): Represents a chart object in a workbook, which is a visual representation of underlying data.  
	* [Chart Collection](resources/chartcollection.md): A collection of charts in a workbook or a worksheet.	
* [NamedItem](resources/nameditem.md): Represents a defined name for a range of cells or a value. Names can be primitive named objects (as seen in the type below), range object, etc.
	* [NamedItem Collection](resources/nameditemcollection.md): a collection of named items of a workbook.
* [Binding](resources/binding.md): An abstract class that represents a binding to a section of the workbook.
	* [Binding Collection](resources/bindingcollection.md):A collection of all the Binding objects that are part of the workbook. 
