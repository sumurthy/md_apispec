# TableRow

Represents a row in a table.

## Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|index|int|Returns the index number of the row within the rows collection of the table. Zero-indexed. Read-only.|
|values|object[][]|Represents the raw values of the specified range. The data returned could be of type string, number, or a boolean. Cell that contain an error will return the error string.|

## Relationships
None


## Tasks

| Task		   | Return Type	|Description|
|:---------------|:--------|:----------|
| [Get metadata](../api/tablerow_get.md) | TableRow |Read properties and relationships of tableRow object.|
| [Update](../api/tablerow_update.md) | TableRow	|Update tableRow object. |
|[Delete](../api/tablerow_delete.md)|None|Deletes the row from the table.|
|[Get Range](../api/tablerow_getrange.md)|[Range](range.md)|Returns the range object associated with the entire row.|
