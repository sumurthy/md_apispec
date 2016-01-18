# TableCollection resource type

Represents a collection of all the tables that are part of the workbook.

### JSON representation

Here is a JSON representation of the resource

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.tablecollection"
}-->

```json
{
  "count": 1024,
  "items": [
    {
      "@odata.type": "microsoft.graph.table[]"
    }
  ]
}

```
### Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|count|int|Returns the number of tables in the workbook. Read-only.|
|items|[Table[]](table[].md) collection|A collection of table objects. Read-only.|

### Relationships
None


### Methods

| Method		   | Return Type	|Description|
|:---------------|:--------|:----------|
|[List](../api/table_list.md) | [Table](table.md) collection |Get table object collection. |
|[Delete](../api/tablecollection_delete.md) | None |Delete TableCollection object. |
|[Add](../api/tablecollection_add.md)|[Table](table.md)|Create a new table. The range source address determines the worksheet under which the table will be added. If the table cannot be added (e.g., because the address is invalid, or the table would overlap with another table), an error will be thrown.|
|[Item](../api/tablecollection_item.md)|[Table](table.md)|Gets a table by Name or ID.|
|[ItemAt](../api/tablecollection_itemat.md)|[Table](table.md)|Gets a table based on its position in the collection.|

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "TableCollection resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->