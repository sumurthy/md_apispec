# TableColumn

Represents a column in a table.

## Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|id|int|Returns a unique key that identifies the column within the table. Read-only.|
|index|int|Returns the index number of the column within the columns collection of the table. Zero-indexed. Read-only.|
|name|string|Returns the name of the table column. Read-only.|
|values|object[][]|Represents the raw values of the specified range. The data returned could be of type string, number, or a boolean. Cell that contain an error will return the error string.|

## Relationships
None


## Tasks

| Task		   | Return Type	|Description|
|:---------------|:--------|:----------|
|[Get metadata](../api/tablecolumn_get.md) | TableColumn |Read properties and relationships of tableColumn object.|
|[Update](../api/tablecolumn_update.md) | TableColumn	|Update tableColumn object. |
|[Delete](../api/tablecolumn_delete.md)|None|Deletes the column from the table.|
|[Get DataBodyRange](../api/tablecolumn_getdatabodyrange.md)|[Range](range.md)|Gets the range object associated with the data body of the column.|
|[Get HeaderRowRange](../api/tablecolumn_getheaderrowrange.md)|[Range](range.md)|Gets the range object associated with the header row of the column.|
|[Get Range](../api/tablecolumn_getrange.md)|[Range](range.md)|Gets the range object associated with the entire column.|
|[Get TotalRowRange](../api/tablecolumn_gettotalrowrange.md)|[Range](range.md)|Gets the range object associated with the totals row of the column.|
