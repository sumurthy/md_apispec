# ChartLegend Object (JavaScript API for Office 2016)

Represents the legend in a chart.

_Applies to: Office 2016_

| Property	   | Type	|Description
|:---------------|:--------|:----------|
|overlay|bool|Boolean value for whether the chart legend should overlap with the main body of the chart.|
|position|string|Represents the position of the legend on the chart. Possible values are: Top, Bottom, Left, Right, Corner, Custom.|
|visible|bool|A boolean value the represents the visibility of a ChartLegend object.|

_See property access [examples.](#property-access-examples)_

## Relationships
| Relationship | Type	|Description|
|:---------------|:--------|:----------|
|format|[ChartLegendFormat](chartlegendformat.md)|Represents the formatting of a chart legend, which includes fill and font formatting. Read-only.|

## Methods

| Method		   | Return Type	|Description|
|:---------------|:--------|:----------|
|[load(param: object)](#loadparam-object)|void|Fills the proxy object created in JavaScript layer with property and object values specified in the parameter.|

## API Specification

### load(param: object)
Fills the proxy object created in JavaScript layer with property and object values specified in the parameter.

#### Syntax
```js
object.load(param);
```

#### Parameters
| Parameter	   | Type	|Description|
|:---------------|:--------|:----------|
|param|object|Optional. Accepts parameter and relationship names as delimited string or an array. Or, provide [loadOption](loadoption.md) object.|

#### Returns
void

#### Examples
```js

```

[Back](#methods)

### Property access examples

Get the `position` of Chart Legend from Chart1

```js
var ctx = new Excel.RequestContext();
var chart = ctx.workbook.worksheets.getItem("Sheet1").charts.getItem("Chart1");	

var legend = chart.legend;
legend.load(position);
ctx.executeAsync().then(function () {
		Console.log(legend.position);
});
```

Set to show legend of Chart1 and make it on top of the chart.

```js
var ctx = new Excel.RequestContext();
var chart = ctx.workbook.worksheets.getItem("Sheet1").charts.getItem("Chart1");	

chart.legend.visible = true;
chart.legend.position = "top"; 
chart.legend.overlay = false; 
ctx.executeAsync().then(function () {
		Console.log("Legend Shown ");
});
``` 
[Back](#properties)
