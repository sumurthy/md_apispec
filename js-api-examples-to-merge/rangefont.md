# Range Font
### Getter and setter 

```js
var sheetName = "Sheet1";
var rangeAddress = "F:G";
Excel.run(function (ctx) { 
var worksheet = ctx.workbook.worksheets.getItem(sheetName);
var range = worksheet.getRange(rangeAddress);
var rangeFont = ramge.format.font;
rangeFont.load(name);
ctx.executeAsync().then(function() {
	Console.log(rangeFont.name);
});
```
The example below sets font name. 

```js
var sheetName = "Sheet1";
var rangeAddress = "F:G";
var range = ctx.workbook.worksheets.getItem(sheetName).getRange(rangeAddress);
range.format.font.name = 'Times New Roman';
return ctx.sync(); 
}); 
