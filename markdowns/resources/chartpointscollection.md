# ChartPointsCollection resource type

A collection of all the chart points within a series inside a chart.

### JSON representation

Here is a JSON representation of the resource

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.chartpointscollection"
}-->

```json
{
  "count": 1024,
  "items": [
    {
      "@odata.type": "microsoft.graph.chartpoint"
    }
  ]
}

```
### Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|count|int|Returns the number of chart points in the collection. Read-only.|
|items|[ChartPoint](chartpoint.md) collection|A collection of chartPoints objects. Read-only.|

### Relationships
None


### Methods

| Method		   | Return Type	|Description|
|:---------------|:--------|:----------|
|[List](../api/chartpoint_list.md) | [ChartPoint](chartpoint.md) collection |Get chartPoint object collection. |
|[Delete](../api/chartpointscollection_delete.md) | None |Delete ChartPointsCollection object. |
|[ItemAt](../api/chartpointscollection_itemat.md)|[ChartPoint](chartpoint.md)|Retrieve a point based on its position within the series.|

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "ChartPointsCollection resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->