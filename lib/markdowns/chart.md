# Chart

Represents a chart object in a workbook.

## [Properties](#getter-and-setter-examples)
| Property       | Type    |Description|Notes |
|:---------------|:--------|:----------|:-----|
|height|double|Represents the height, in points, of the chart object.||
|left|double|The distance, in points, from the left side of the chart to the worksheet origin.||
|name|string|Represents the name of a chart object.||
|top|double|Represents the distance, in points, from the top edge of the object to the top of row 1 (on a worksheet) or the top of the chart area (on a chart).||
|width|double|Represents the width, in points, of the chart object.||

## Relationships
None

## Methods
| Methos           | Type    |Description|Notes |
|:---------------|:--------|:----------|:-----|
|delete()|void|Deletes the chart object.||
|setData(sourceData: string, seriesBy: string)|void|Resets the source data for the chart.||

## API Specification

### delete()
Deletes the chart object.

#### Syntax
chartObject.delete();

#### Parameters
None
#### Returns
#### void

#### Examples
```js
var ctx = new Excel.ExcelClientContext();
var chart = ctx.workbook.worksheets.getItem("Sheet1").charts.getItem("Chart1");	

ctx.executeAsync().then(function () {
		Console.log"Chart Deleted");
});
```

[Back](#methods)

### setData(sourceData: string, seriesBy: string)
Resets the source data for the chart.

#### Syntax
chartObject.setData(sourceData, seriesBy);

#### Parameters
| Parameter       | Type    |Description|
|:---------------|:--------|:----------|
|sourceData|string|Optional. The address or name of the range that contains the source data. If an address or a worksheet-scoped name is used, it must include the worksheet name (e.g. "Sheet1!A5:B9"). |
|seriesBy|string|Specifies the way columns or rows are used as data series on the chart. Can be one of the following: Auto (default), Rows, Columns.  Possible values are: Auto, Columns, Rows|
#### Returns
#### void

#### Examples

Set the `sourceData` to be "A1:B4" and `seriesBy` to be "Columns"

```js
var ctx = new Excel.ExcelClientContext();
var chart = ctx.workbook.worksheets.getItem("Sheet1").charts.getItem("Chart1");	
var sourceData = "A1:B4";

chart.setData(sourceData, "Columns");
ctx.executeAsync().then();
```

[Back](#methods)

#### Getter and Setter Examples

Get a chart named "Chart1"
```js
var ctx = new Excel.ExcelClientContext();
var chart = ctx.workbook.worksheets.getItem("Sheet1").charts.getItem("Chart1");	

ctx.load(chart);
ctx.executeAsync().then(function () {
		Console.log("Chart1 Loaded");
});
```

Update a chart including renaming, positioning and resizing.

```js
chartObject.name="New Name";
chartObject.top = 100;
chartObject.left = 100;
chartObject.height = 200;
chartObject.weight = 200;
```
Rename the chart to new name, resize the chart to 200 points in both height and weight. Move Chart1 to 100 points to the top and left. 

```js
var ctx = new Excel.ExcelClientContext();
var chart = ctx.workbook.worksheets.getItem("Sheet1").charts.getItem("Chart1");

chart.name="New Name";	
chart.top = 100;
chart.left = 100;
chart.height =200;
chart.width =200;
ctx.executeAsync().then(function () {
		Console.log("Chart Updated");
});
```
[Back](#properties)
