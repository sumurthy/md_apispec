# Chart Series Collection

### Getter ChartSeries Collection
Getting the names of series in the series collection.

```js
var ctx = new Excel.RequestContext();
var seriesCollection = ctx.workbook.worksheets.getItem("Sheet1").charts.getItem("Chart1").series;
ctx.load(seriesCollection);
ctx.executeAsync().then(function () {
	for (var i = 0; i < seriesCollection.items.length; i++)
	{
		Console.log(seriesCollection.items[i].name);
	}
});
```

Get the number of chart series in collection.

```js
var ctx = new Excel.RequestContext();
var seriesCollection = ctx.workbook.worksheets.getItem("Sheet1").charts.getItem("Chart1").series;
ctx.load(seriesCollection);
ctx.executeAsync().then(function () {
	Console.log("series: Count= " + seriesCollection.count);
});

```

### getItemAt(index: number)

Get the name of the first series in the series collection.
```js
var ctx = new Excel.RequestContext();
var seriesCollection = ctx.workbook.worksheets.getItem("Sheet1").charts.getItem("Chart1").series;
ctx.load(seriesCollection);
ctx.executeAsync().then(function () {
	Console.log(seriesCollection.items[0].name);
});
```

