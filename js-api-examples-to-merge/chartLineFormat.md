# Chart Line Format
### clear()

Clear the line format of the major gridlines on value axis of the Chart named "Chart1"

```js
var ctx = new Excel.RequestContext();
var gridlines = ctx.workbook.worksheets.getItem("Sheet1").charts.getItem("Chart1").axes.valueaxis.majorGridlines;	

gridlines.format.line.clear();
ctx.executeAsync().then(function () {
		Console.log"Chart Major Gridlines Format Cleared");
});
```
### Setter

Set chart major gridlines on value axis to be red.
```js
var ctx = new Excel.RequestContext();
var gridlines = ctx.workbook.worksheets.getItem("Sheet1").charts.axes.valueaxis.majorGridlines;

gridlines.format.line.color = "#FF0000";


ctx.executeAsync().then(function () {
		Console.log("Chart Gridlines Color Updated");
});
```
