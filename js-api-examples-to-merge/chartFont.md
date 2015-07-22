# Chart Font

### Setter Font

Use chart title as an example.

```js
chartObject.title.format.font.name = "Calibri";
chartObject.title.format.font.size = 12;
chartObject.title.format.font.color = "#FF0000";
chartObject.title.format.font.italic =  false;
chartObject.title.format.font.bold = true;
chartObject.title.format.font.underline = false;
```

Set chart title to be Calbri, size 10, bold and in red. 

```js
var ctx = new Excel.RequestContext();
var title = ctx.workbook.worksheets.getItem("Sheet1").charts.getItem("Chart1").title;

title.format.font.name = "Calibri";
title.format.font.size = 12;
title.format.font.color = "#FF0000";
title.format.font.italic =  false;
title.format.font.bold = true;
title.format.font.underline = false;

ctx.executeAsync().then(function () {
		Console.log("Chart Title Font Updated");
});
```
