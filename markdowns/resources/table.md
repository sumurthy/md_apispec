# Table resource type

Represents an Excel table.

### JSON representation

Here is a JSON representation of the resource

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.table"
}-->

```json
{
  "id": 1024,
  "name": "string-value",
  "showHeaders": true,
  "showTotals": true,
  "style": "string-value"
}

```
### Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|id|int|Returns a value that uniquely identifies the table in a given workbook. The value of the identifier remains the same even when the table is renamed. Read-only.|
|name|string|Name of the table.|
|showHeaders|[bool](bool.md)|Indicates whether the header row is visible or not. This value can be set to show or remove the header row.|
|showTotals|[bool](bool.md)|Indicates whether the total row is visible or not. This value can be set to show or remove the total row.|
|style|string|Constant value that represents the Table style. Possible values are: TableStyleLight1 thru TableStyleLight21, TableStyleMedium1 thru TableStyleMedium28, TableStyleStyleDark1 thru TableStyleStyleDark11. A custom user-defined style present in the workbook can also be specified.|

### Relationships
| Relationship | Type	|Description|
|:---------------|:--------|:----------|
|columns|[TableColumn](tablecolumn.md) collection|Represents a collection of all the columns in the table. Read-only.|
|rows|[TableRow](tablerow.md) collection|Represents a collection of all the rows in the table. Read-only.|

### Methods

| Method		   | Return Type	|Description|
|:---------------|:--------|:----------|
|[Get Table](../api/table_get.md) | [Table](table.md) |Read properties and relationships of table object.|
|[Create TableColumn](../api/table_post_columns.md) |[TableColumn](tablecolumn.md)| Create a new TableColumn by posting to the columns collection.|
|[List columns](../api/table_list_columns.md) |[TableColumn](tablecolumn.md) collection| Get a TableColumn object collection.|
|[Create TableRow](../api/table_post_rows.md) |[TableRow](tablerow.md)| Create a new TableRow by posting to the rows collection.|
|[List rows](../api/table_list_rows.md) |[TableRow](tablerow.md) collection| Get a TableRow object collection.|
|[Update](../api/table_update.md) | [Table](table.md)	|Update Table object. |
|[Delete](../api/table_delete.md) | None |Delete Table object. |
|[DataBodyRange](../api/table_databodyrange.md)|[Range](range.md)|Gets the range object associated with the data body of the table.|
|[Delete](../api/table_delete.md)|[void](void.md)|Deletes the table.|
|[HeaderRowRange](../api/table_headerrowrange.md)|[Range](range.md)|Gets the range object associated with header row of the table.|
|[Range](../api/table_range.md)|[Range](range.md)|Gets the range object associated with the entire table.|
|[TotalRowRange](../api/table_totalrowrange.md)|[Range](range.md)|Gets the range object associated with totals row of the table.|

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "Table resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->