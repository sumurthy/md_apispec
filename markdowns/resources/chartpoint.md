# ChartPoint resource type

Represents a point of a series in a chart.

### JSON representation

Here is a JSON representation of the resource

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.chartpoint"
}-->

```json
{
  "value": {
    "@odata.type": "microsoft.graph.object"
  }
}

```
### Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|value|[object](object.md)|Returns the value of a chart point. Read-only.|

### Relationships
| Relationship | Type	|Description|
|:---------------|:--------|:----------|
|format|[ChartPointFormat](chartpointformat.md)|Encapsulates the format properties chart point. Read-only.|

### Methods

| Method		   | Return Type	|Description|
|:---------------|:--------|:----------|
|[Get ChartPoint](../api/chartpoint_get.md) | [ChartPoint](chartpoint.md) |Read properties and relationships of chartPoint object.|
|[Delete](../api/chartpoint_delete.md) | None |Delete ChartPoint object. |

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "ChartPoint resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->