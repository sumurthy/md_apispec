# Range Fill

### clear()

This example resets the range background.

```js
var sheetName = "Sheet1";
var rangeAddress = "F:G";
Excel.run(function (ctx) { 
var worksheet = ctx.workbook.worksheets.getItem(sheetName);
var range = worksheet.getRange(rangeAddress);
var rangeFill = ramge.format.fill;
rangeFill.clear();
return ctx.sync(); 
}); 

### Getter and setter 
```js
var sheetName = "Sheet1";
var rangeAddress = "F:G";
Excel.run(function (ctx) { 
var worksheet = ctx.workbook.worksheets.getItem(sheetName);
var range = worksheet.getRange(rangeAddress);
var rangeFill = ramge.format.fill;
rangeFill.load(color);
ctx.executeAsync().then(function() {
	Console.log(rangeFill.color);
});
```
The example below sets fill color. 

```js
var sheetName = "Sheet1";
var rangeAddress = "F:G";
var range = ctx.workbook.worksheets.getItem(sheetName).getRange(rangeAddress);
range.format.fill.color = '0000FF';
return ctx.sync(); 
}); 