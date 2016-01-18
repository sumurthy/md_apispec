# ChartSeries resource type

Represents a series in a chart.

### JSON representation

Here is a JSON representation of the resource

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.chartseries"
}-->

```json
{
  "name": "string-value"
}

```
### Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|name|string|Represents the name of a series in a chart.|

### Relationships
| Relationship | Type	|Description|
|:---------------|:--------|:----------|
|format|[ChartSeriesFormat](chartseriesformat.md)|Represents the formatting of a chart series, which includes fill and line formatting. Read-only.|
|points|[ChartPoints](chartpoints.md) collection|Represents a collection of all points in the series. Read-only.|

### Methods

| Method		   | Return Type	|Description|
|:---------------|:--------|:----------|
|[Get ChartSeries](../api/chartseries_get.md) | [ChartSeries](chartseries.md) |Read properties and relationships of chartSeries object.|
|[Create ChartPoints](../api/chartseries_post_points.md) |[ChartPoints](chartpoints.md)| Create a new ChartPoints by posting to the points collection.|
|[List points](../api/chartseries_list_points.md) |[ChartPoints](chartpoints.md) collection| Get a ChartPoints object collection.|
|[Update](../api/chartseries_update.md) | [ChartSeries](chartseries.md)	|Update ChartSeries object. |
|[Delete](../api/chartseries_delete.md) | None |Delete ChartSeries object. |

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "ChartSeries resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->