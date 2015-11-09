# TableColumnCollection resource type

Represents a collection of all the columns that are part of the table.

### JSON representation

Here is a JSON representation of the resource

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.tablecolumncollection"
}-->

```json
{
  "count": 1024,
  "items": [
    {
      "@odata.type": "microsoft.graph.tablecolumn"
    }
  ]
}

```
### Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|count|int|Returns the number of columns in the table. Read-only.|
|items|[TableColumn](tablecolumn.md) collection|A collection of tableColumn objects. Read-only.|

### Relationships
None


### Methods

| Method		   | Return Type	|Description|
|:---------------|:--------|:----------|
|[List](../api/tablecolumn_list.md) | [TableColumn](tablecolumn.md) collection |Get tableColumn object collection. |
|[Delete](../api/tablecolumncollection_delete.md) | None |Delete TableColumnCollection object. |
|[Add](../api/tablecolumncollection_add.md)|[TableColumn](tablecolumn.md)|Adds a new column to the table.|
|[Item](../api/tablecolumncollection_item.md)|[TableColumn](tablecolumn.md)|Gets a column object by Name or ID.|
|[ItemAt](../api/tablecolumncollection_itemat.md)|[TableColumn](tablecolumn.md)|Gets a column based on its position in the collection.|

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "TableColumnCollection resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->