# RangeBorderCollection resource type

Represents the border objects that make up range border.

### JSON representation

Here is a JSON representation of the resource

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.rangebordercollection"
}-->

```json
{
  "count": 1024,
  "items": [
    {
      "@odata.type": "microsoft.graph.rangeborder"
    }
  ]
}

```
### Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|count|int|Number of border objects in the collection. Read-only.|
|items|[RangeBorder](rangeborder.md) collection|A collection of rangeBorder objects. Read-only.|

### Relationships
None


### Methods

| Method		   | Return Type	|Description|
|:---------------|:--------|:----------|
|[List](../api/rangeborder_list.md) | [RangeBorder](rangeborder.md) collection |Get rangeBorder object collection. |
|[Delete](../api/rangebordercollection_delete.md) | None |Delete RangeBorderCollection object. |
|[Item](../api/rangebordercollection_item.md)|[RangeBorder](rangeborder.md)|Gets a border object using its name|
|[ItemAt](../api/rangebordercollection_itemat.md)|[RangeBorder](rangeborder.md)|Gets a border object using its index|

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "RangeBorderCollection resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->