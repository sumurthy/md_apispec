# Chart Title

### Getter and setter

Get the `text` of Chart Title from Chart1.

```js
var ctx = new Excel.RequestContext();
var chart = ctx.workbook.worksheets.getItem("Sheet1").charts.getItem("Chart1");	

var title = chart.title;
ctx.load(title);
ctx.executeAsync().then(function () {
		Console.log(title.text);
});
```

Set the `text` of Chart Title to "My Chart" and Make it show on top of the chart without overlaying.

```js
var ctx = new Excel.RequestContext();
var chart = ctx.workbook.worksheets.getItem("Sheet1").charts.getItem("Chart1");	

chart.title.text= "My Chart"; 
chart.title.visible=true;
chart.title.overlay=true;

ctx.executeAsync().then(function () {
		Console.log("Char Title Changed");
});
```
