# Table

Represents an Excel table.

## Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|id|int|Returns a value that uniquely identifies the table in a given workbook. The value of the identifier remains the same even when the table is renamed. Read-only.|
|name|string|Name of the table.|
|showHeaders|bool|Indicates whether the header row is visible or not. This value can be set to show or remove the header row.|
|showTotals|bool|Indicates whether the total row is visible or not. This value can be set to show or remove the total row.|
|style|string|Constant value that represents the Table style. Possible values are: TableStyleLight1 thru TableStyleLight21, TableStyleMedium1 thru TableStyleMedium28, TableStyleStyleDark1 thru TableStyleStyleDark11. A custom user-defined style present in the workbook can also be specified.|

## Relationships
| Relationship | Type	|Description|
|:---------------|:--------|:----------|
|columns|[TableColumnCollection](tablecolumncollection.md)|Represents a collection of all the columns in the table. Read-only.|
|rows|[TableRowCollection](tablerowcollection.md)|Represents a collection of all the rows in the table. Read-only.|

## Tasks

| Task		   | Return Type	|Description|
|:---------------|:--------|:----------|
| [Get metadata](../api/table_get.md) | Table |Read properties and relationships of table object.|
| [Update](../api/table_update.md) | Table	|Update table object. |
|[Delete](../api/table_delete.md)|None|Deletes the table.|
|[Get DataBodyRange](../api/table_getdatabodyrange.md)|[Range](range.md)|Gets the range object associated with the data body of the table.|
|[Get HeaderRowRange](../api/table_getheaderrowrange.md)|[Range](range.md)|Gets the range object associated with header row of the table.|
|[Get Range](../api/table_getrange.md)|[Range](range.md)|Gets the range object associated with the entire table.|
|[Get TotalRowRange](../api/table_gettotalrowrange.md)|[Range](range.md)|Gets the range object associated with totals row of the table.|
