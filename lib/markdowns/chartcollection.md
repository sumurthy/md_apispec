# ChartCollection

A collection of all the chart objects on a worksheet.

## [Properties](#getter-examples)
| Property       | Type    |Description|Notes |
|:---------------|:--------|:----------|:-----|
|count|int|Returns the number of charts in the worksheet. Read-only.||
|items|[ChartCollection](chartcollection.md)|A collection of chart objects. Read-only.||

## Relationships
None

## Methods
| Methos           | Type    |Description|Notes |
|:---------------|:--------|:----------|:-----|
|add(type: string, sourceData: string, seriesBy: string)|[Chart](chart.md)|Creates a new chart.||
|getItem(id: string)|[Chart](chart.md)|Gets a chart using its ID.||
|getItem(name: string)|[Chart](chart.md)|Gets a chart using its name. If there are multiple charts with the same name, the first one will be returned.||
|getItemAt(index: number)|[Chart](chart.md)|Gets a chart based on its position in the collection.||

## API Specification

### add(type: string, sourceData: string, seriesBy: string)
Creates a new chart.

#### Syntax
chartCollectionObject.add(type, sourceData, seriesBy);

#### Parameters
| Parameter       | Type    |Description|
|:---------------|:--------|:----------|
|type|string|Optional. Represents the type of a chart.  Possible values are: Invalid, ColumnClustered, ColumnStacked, ColumnStacked100, BarClustered, BarStacked, BarStacked100, LineStacked, LineStacked100, LineMarkers, LineMarkersStacked, LineMarkersStacked100, PieOfPie, PieExploded, BarOfPie, XYScatterSmooth, XYScatterSmoothNoMarkers, XYScatterLines, XYScatterLinesNoMarkers, AreaStacked, AreaStacked100, DoughnutExploded, RadarMarkers, RadarFilled, Surface, SurfaceWireframe, SurfaceTopView, SurfaceTopViewWireframe, Bubble, Bubble3DEffect, StockHLC, StockOHLC, StockVHLC, StockVOHLC, CylinderColClustered, CylinderColStacked, CylinderColStacked100, CylinderBarClustered, CylinderBarStacked, CylinderBarStacked100, CylinderCol, ConeColClustered, ConeColStacked, ConeColStacked100, ConeBarClustered, ConeBarStacked, ConeBarStacked100, ConeCol, PyramidColClustered, PyramidColStacked, PyramidColStacked100, PyramidBarClustered, PyramidBarStacked, PyramidBarStacked100, PyramidCol, Line, Pie, XYScatter, Area, Doughnut, Radar|
|sourceData|string|Optional. The address or name of the range that contains the source data. If an address or a worksheet-scoped name is used, it must include the worksheet name (e.g. "Sheet1!A5:B9"). |
|seriesBy|string|Specifies the way columns or rows are used as data series on the chart. Can be one of the following: Auto (default), Rows, Columns.  Possible values are: Auto, Columns, Rows|
#### Returns
#### [Chart](chart.md)

#### Examples

Add a chart of `chartType` "ColumnClustered" on worksheet "Charts" with `sourceData` from Range "A1:B4" and `seriresBy` is set to be "auto".

```js
var sheetName = "Sheet1";
var sourceData = sheetName + "!" + "A1:B4";
var ctx = new Excel.ExcelClientContext();
var chart = ctx.workbook.worksheets.getItem(sheetName).charts.add("ColumnClustered", sourceData, "auto");
ctx.executeAsync().then(function () {
		Console.log("New Chart Added");
});
```


[Back](#methods)

### getItem(id: string)
Gets a chart using its ID.

#### Syntax
chartCollectionObject.getItem(id);

#### Parameters
| Parameter       | Type    |Description|
|:---------------|:--------|:----------|
|id|string|Optional. Id of the chart to be retrieved.|
#### Returns
#### [Chart](chart.md)

#### Examples
```js

```

[Back](#methods)

### getItem(name: string)
Gets a chart using its name. If there are multiple charts with the same name, the first one will be returned.

#### Syntax
chartCollectionObject.getItem(name);

#### Parameters
| Parameter       | Type    |Description|
|:---------------|:--------|:----------|
|name|string|Optional. Name of the chart to be retrieved.|
#### Returns
#### [Chart](chart.md)

#### Examples

```js
var ctx = new Excel.ExcelClientContext();
var chartname = 'Chart1';
var chart = ctx.workbook.worksheets.getItem("Sheet1").charts.getItem(chartname);
ctx.executeAsync().then(function () {
		Console.log(chart.index);
});
```

[Back](#methods)

### getItemAt(index: number)
Gets a chart based on its position in the collection.

#### Syntax
chartCollectionObject.getItemAt(index);

#### Parameters
| Parameter       | Type    |Description|
|:---------------|:--------|:----------|
|index|number|Optional. Index value of the object to be retrieved. Zero-indexed.|
#### Returns
#### [Chart](chart.md)

#### Examples

```js
var ctx = new Excel.ExcelClientContext();
var lastPosition = ctx.workbook.worksheets.getItem("Sheet1").charts.count - 1;
var chart = ctx.workbook.worksheets.getItem("Sheet1").charts.getItemAt(lastPosition);
ctx.executeAsync().then(function () {
		Console.log(chart.name);
});
```


[Back](#methods)

#### Getter Examples

```js
var ctx = new Excel.ExcelClientContext();
var charts = ctx.workbook.worksheets.getItem("Sheet1").charts;
ctx.load(charts);
ctx.executeAsync().then(function () {
	for (var i = 0; i < charts.items.length; i++)
	{
		Console.log(charts.items[i].name);
		Console.log(charts.items[i].index);
	}
});
```

Get the number of charts

```js
var ctx = new Excel.ExcelClientContext();
var charts = ctx.workbook.worksheets.getItem("Sheet1").charts;
ctx.load(charts);
ctx.executeAsync().then(function () {
	Console.log("charts: Count= " + charts.count);
});
```

[Back](#properties)
