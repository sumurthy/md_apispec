# Chart Collection

### Getter 

```js
var ctx = new Excel.RequestContext();
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
var ctx = new Excel.RequestContext();
var charts = ctx.workbook.worksheets.getItem("Sheet1").charts;
ctx.load(charts);
ctx.executeAsync().then(function () {
	Console.log("charts: Count= " + charts.count);
});
```

### add(type: string, sourceData: string, seriesBy: string)

Add a chart of `chartType` "ColumnClustered" on worksheet "Charts" with `sourceData` from Range "A1:B4" and `seriresBy` is set to be "auto".

```js
var sheetName = "Sheet1";
var sourceData = sheetName + "!" + "A1:B4";
var ctx = new Excel.RequestContext();
var chart = ctx.workbook.worksheets.getItem(sheetName).charts.add("ColumnClustered", sourceData, "auto");
ctx.executeAsync().then(function () {
		Console.log("New Chart Added");
});
```

### getItem(name: string)

```js
var ctx = new Excel.RequestContext();
var chartname = 'Chart1';
var chart = ctx.workbook.worksheets.getItem("Sheet1").charts.getItem(chartname);
ctx.executeAsync().then(function () {
		Console.log(chart.height);
});
```

### getItem(id: string)

```js
var ctx = new Excel.RequestContext();
var chartId = 'SamplChartId';
var chart = ctx.workbook.worksheets.getItem("Sheet1").charts.getItem(chartId);
ctx.executeAsync().then(function () {
		Console.log(chart.height);
});
```


### getItemAt(index: number)

```js
var ctx = new Excel.RequestContext();
var lastPosition = ctx.workbook.worksheets.getItem("Sheet1").charts.count - 1;
var chart = ctx.workbook.worksheets.getItem("Sheet1").charts.getItemAt(lastPosition);
ctx.executeAsync().then(function () {
		Console.log(chart.name);
});
```

