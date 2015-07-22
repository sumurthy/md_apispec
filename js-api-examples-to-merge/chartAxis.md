# Chart Axis

### Getter and setter
Get the `maximum` of Chart Axis from Chart1
```js
var ctx = new Excel.RequestContext();
var chart = ctx.workbook.worksheets.getItem("Sheet1").charts.getItem("Chart1");	

var axis = chart.axes.valueaxis;
ctx.load(axis);
ctx.executeAsync().then(function () {
		Console.log(axis.maximum);
});
```

Set the  `maximum`,  `minimum`,  `majorunit`, `minorunit` of valueaxis. 

```js
var ctx = new Excel.RequestContext();
var chart = ctx.workbook.worksheets.getItem("Sheet1").charts.getItem("Chart1");	

chart.axes.valueaxis.maximum = 5;
chart.axes.valueaxis.minimum = 0;
chart.axes.valueaxis.majorunit = 1;
chart.axes.valueaxis.minorunit = 0.2;

ctx.executeAsync().then(function () {
		Console.log("Axis Settings Changed");
});
```
