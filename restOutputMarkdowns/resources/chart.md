# Chart

Represents a chart object in a workbook.

## Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|height|double|Represents the height, in points, of the chart object.|
|left|double|The distance, in points, from the left side of the chart to the worksheet origin.|
|name|string|Represents the name of a chart object.|
|top|double|Represents the distance, in points, from the top edge of the object to the top of row 1 (on a worksheet) or the top of the chart area (on a chart).|
|width|double|Represents the width, in points, of the chart object.|

## Relationships
| Relationship | Type	|Description|
|:---------------|:--------|:----------|
|axes|[ChartAxes](chartaxes.md)|Represents chart axes. Read-only.|
|dataLabels|[ChartDataLabels](chartdatalabels.md)|Represents the datalabels on the chart. Read-only.|
|format|[ChartAreaFormat](chartareaformat.md)|Encapsulates the format properties for the chart area. Read-only.|
|legend|[ChartLegend](chartlegend.md)|Represents the legend for the chart. Read-only.|
|series|[ChartSeriesCollection](chartseriescollection.md)|Represents either a single series or collection of series in the chart. Read-only.|
|title|[ChartTitle](charttitle.md)|Represents the title of the specified chart, including the text, visibility, position and formating of the title. Read-only.|

## Tasks

| Task		   | Return Type	|Description|
|:---------------|:--------|:----------|
|[Get metadata](../api/chart_get.md) | Chart |Read properties and relationships of chart object.|
|[Update](../api/chart_update.md) | Chart	|Update chart object. |
|[Delete](../api/chart_delete.md)|None|Deletes the chart object.|
|[Setdata](../api/chart_setdata.md)|None|Resets the source data for the chart.|
|[Setposition](../api/chart_setposition.md)|None|Positions the chart relative to cells on the worksheet.|
