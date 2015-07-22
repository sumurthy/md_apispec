# Chart Legend
### Getter and setter

Get the `position` of Chart Legend from Chart1

```js
var ctx = new Excel.RequestContext();
var chart = ctx.workbook.worksheets.getItem("Sheet1").charts.getItem("Chart1");	

var legend = chart.legend;
ctx.load(legend);
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