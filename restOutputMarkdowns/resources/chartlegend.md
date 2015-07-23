# ChartLegend

Represents the legend in a chart.

## Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|overlay|bool|Boolean value for whether the chart legend should overlap with the main body of the chart.|
|position|string|Represents the position of the legend on the chart. Possible values are: `Top`, `Bottom`, `Left`, `Right`, `Corner`, `Custom`.|
|visible|bool|A boolean value the represents the visibility of a ChartLegend object.|

## Relationships
| Relationship | Type	|Description|
|:---------------|:--------|:----------|
|format|[ChartLegendFormat](chartlegendformat.md)|Represents the formatting of a chart legend, which includes fill and font formatting. Read-only.|

## Tasks

| Task		   | Return Type	|Description|
|:---------------|:--------|:----------|
| [Get metadata](../api/chartlegend_get.md) | ChartLegend |Read properties and relationships of chartLegend object.|
| [Update](../api/chartlegend_update.md) | ChartLegend	|Update chartLegend object. |
