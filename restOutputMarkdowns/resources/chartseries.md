# ChartSeries

Represents a series in a chart.

## Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|name|string|Represents the name of a series in a chart.|

## Relationships
| Relationship | Type	|Description|
|:---------------|:--------|:----------|
|format|[ChartSeriesFormat](chartseriesformat.md)|Represents the formatting of a chart series, which includes fill and line formatting. Read-only.|
|points|[ChartPointsCollection](chartpointscollection.md)|Represents a collection of all points in the series. Read-only.|

## Tasks

| Task		   | Return Type	|Description|
|:---------------|:--------|:----------|
|[Get metadata](../api/chartseries_get.md) | ChartSeries |Read properties and relationships of chartSeries object.|
|[Update](../api/chartseries_update.md) | ChartSeries	|Update chartSeries object. |
