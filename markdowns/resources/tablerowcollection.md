# TableRowCollection resource type

Represents a collection of all the rows that are part of the table.

### JSON representation

Here is a JSON representation of the resource

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.tablerowcollection"
}-->

```json
{
  "count": 1024,
  "items": [
    {
      "@odata.type": "microsoft.graph.tablerow"
    }
  ]
}

```
### Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|count|int|Returns the number of rows in the table. Read-only.|
|items|[TableRow](tablerow.md) collection|A collection of tableRow objects. Read-only.|

### Relationships
None


### Methods

| Method		   | Return Type	|Description|
|:---------------|:--------|:----------|
|[List](../api/tablerow_list.md) | [TableRow](tablerow.md) collection |Get tableRow object collection. |
|[Delete](../api/tablerowcollection_delete.md) | None |Delete TableRowCollection object. |
|[Add](../api/tablerowcollection_add.md)|[TableRow](tablerow.md)|Adds a new row to the table.|
|[ItemAt](../api/tablerowcollection_itemat.md)|[TableRow](tablerow.md)|Gets a row based on its position in the collection.|

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "TableRowCollection resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->