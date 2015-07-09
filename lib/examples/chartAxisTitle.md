# AxisTitle
### Getter and setter
Get the `text` of Chart Axis Title from the value axis of Chart1.

```js
var ctx = new Excel.RequestContext();
var chart = ctx.workbook.worksheets.getItem("Sheet1").charts.getItem("Chart1");	

var title = chart.axes.valueaxis.title;
ctx.load(title);
ctx.executeAsync().then(function () {
		Console.log(title.text);
});

Add "Values" as the title for the value Axis
```js
var ctx = new Excel.RequestContext();
var chart = ctx.workbook.worksheets.getItem("Sheet1").charts.getItem("Chart1");	

chart.axes.valueaxis.title.text = "Values";

ctx.executeAsync().then(function () {
		Console.log("Axis Title Added ");
});
```
[Back](#properties)