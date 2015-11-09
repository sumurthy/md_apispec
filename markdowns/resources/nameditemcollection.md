# NamedItemCollection resource type

A collection of all the nameditem objects that are part of the workbook.

### JSON representation

Here is a JSON representation of the resource

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.nameditemcollection"
}-->

```json
{
  "items": [
    {
      "@odata.type": "microsoft.graph.nameditem"
    }
  ]
}

```
### Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|items|[NamedItem](nameditem.md) collection|A collection of namedItem objects. Read-only.|

### Relationships
None


### Methods

| Method		   | Return Type	|Description|
|:---------------|:--------|:----------|
|[List](../api/nameditem_list.md) | [NamedItem](nameditem.md) collection |Get namedItem object collection. |
|[Delete](../api/nameditemcollection_delete.md) | None |Delete NamedItemCollection object. |
|[Item](../api/nameditemcollection_item.md)|[NamedItem](nameditem.md)|Gets a nameditem object using its name|

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "NamedItemCollection resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->