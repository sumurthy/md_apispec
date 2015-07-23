# WorksheetCollection

Represents a collection of worksheet objects that are part of the workbook.

## Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|items|[Worksheet[]](worksheet.md)|A collection of worksheet objects. Read-only.|

## Relationships
None


## Tasks

| Task		   | Return Type	|Description|
|:---------------|:--------|:----------|
|[List](../api/worksheetcollection_list.md) | Worksheet[]|Get worksheet object collection. |
|[Add](../api/worksheetcollection_add.md)|[Worksheet](worksheet.md)|Adds a new worksheet to the workbook. The worksheet will be added at the end of existing worksheets. If you wish to activate the newly added worksheet, call ".activate() on it.|
|[Get ActiveWorksheet](../api/worksheetcollection_getactiveworksheet.md)|[Worksheet](worksheet.md)|Gets the currently active worksheet in the workbook.|
