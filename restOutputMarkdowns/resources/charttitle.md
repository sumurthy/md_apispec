# ChartTitle

Represents a chart title object of a chart.

## Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|overlay|bool|Boolean value representing if the chart title will overlay the chart or not.|
|text|string|Represents the title text of a chart.|
|visible|bool|A boolean value the represents the visibility of a chart title object.|

## Relationships
| Relationship | Type	|Description|
|:---------------|:--------|:----------|
|format|[ChartTitleFormat](charttitleformat.md)|Represents the formatting of a chart title, which includes fill and font formatting. Read-only.|

## Tasks

| Task		   | Return Type	|Description|
|:---------------|:--------|:----------|
|[Get metadata](../api/charttitle_get.md) | ChartTitle |Read properties and relationships of chartTitle object.|
|[Update](../api/charttitle_update.md) | ChartTitle	|Update chartTitle object. |
