# Range Fill

### clear()

This example resets the range background.

```js
Excel.run(function (ctx) { 
	var sheetName = "Sheet1";
	var rangeAddress = "F:G";
	var worksheet = ctx.workbook.worksheets.getItem(sheetName);
	var range = worksheet.getRange(rangeAddress);
	var rangeFill = ramge.format.fill;
	rangeFill.clear();
	return ctx.sync(); 
}); 

### Getter and setter 
```js
Excel.run(function (ctx) { 
	var sheetName = "Sheet1";
	var rangeAddress = "F:G";
	var worksheet = ctx.workbook.worksheets.getItem(sheetName);
	var range = worksheet.getRange(rangeAddress);
	var rangeFill = ramge.format.fill;
	rangeFill.load(color);
	return ctx.sync().then(function() {
		Console.log(rangeFill.color);
	});
});

```
The example below sets fill color. 

```js
Excel.run(function (ctx) { 
	var sheetName = "Sheet1";
	var rangeAddress = "F:G";
	var range = ctx.workbook.worksheets.getItem(sheetName).getRange(rangeAddress);
	range.format.fill.color = '0000FF';
	return ctx.sync(); 
}); 