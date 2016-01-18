# ChartSeriesCollection resource type

Represents a collection of chart series.

### JSON representation

Here is a JSON representation of the resource

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.chartseriescollection"
}-->

```json
{
  "count": 1024,
  "items": [
    {
      "@odata.type": "microsoft.graph.chartseries[]"
    }
  ]
}

```
### Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|count|int|Returns the number of series in the collection. Read-only.|
|items|[ChartSeries[]](chartseries[].md) collection|A collection of chartSeries objects. Read-only.|

### Relationships
None


### Methods

| Method		   | Return Type	|Description|
|:---------------|:--------|:----------|
|[List](../api/chartseries_list.md) | [ChartSeries](chartseries.md) collection |Get chartSeries object collection. |
|[Delete](../api/chartseriescollection_delete.md) | None |Delete ChartSeriesCollection object. |
|[ItemAt](../api/chartseriescollection_itemat.md)|[ChartSeries](chartseries.md)|Retrieves a series based on its position in the collection|

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "ChartSeriesCollection resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->