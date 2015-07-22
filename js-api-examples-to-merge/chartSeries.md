# Chart Series

### Setter 

Rename the 1st series of Chart1 to "New Series Name"

```js
var ctx = new Excel.RequestContext();
var chart = ctx.workbook.worksheets.getItem("Sheet1").charts.getItem("Chart1");	

chart.series.getItemAt(0).name = "New Series Name";

ctx.executeAsync().then(function () {
		Console.log("Series1 Renamed");
});
```
