# Range Border Collection 

### getItem(index: string)
```js
var sheetName = "Sheet1";
var rangeAddress = "A1:F8";
var ctx = new Excel.ExcelClientContext();
var worksheet = ctx.workbook.worksheets.getItem(sheetName);
var range = worksheet.getRange(rangeAddress);
var borderName = 'EdgeTop';
var border = range.format.borders.getItem(borderName);
ctx.load(border);
ctx.executeAsync().then(function () {
		Console.log(border.style);
});
```

### getItemAt(index: number)
```js
var sheetName = "Sheet1";
var rangeAddress = "A1:F8";
var ctx = new Excel.ExcelClientContext();
var worksheet = ctx.workbook.worksheets.getItem(sheetName);
var range = worksheet.getRange(rangeAddress);
var border = ctx.workbook.borders.getItemAt(0);
ctx.load(border);
ctx.executeAsync().then(function () {
		Console.log(border.sideIndex);
});
```

### Getter and setter

```js
var sheetName = "Sheet1";
var rangeAddress = "A1:F8";
var ctx = new Excel.ExcelClientContext();
var worksheet = ctx.workbook.worksheets.getItem(sheetName);
var range = worksheet.getRange(rangeAddress);
var borders = range.format.borders;
ctx.load(borders);
ctx.executeAsync().then(function () {
	Console.log(borders.count);
	for (var i = 0; i < borders.items.length; i++)
	{
		Console.log(borders.items[i].sideIndex);
	}
});
```
The example below adds grid border around the range.

```js
var sheetName = "Sheet1";
var rangeAddress = "A1:F8";
var range = ctx.workbook.worksheets.getItem(sheetName).getRange(rangeAddress);
range.format.borders('InsideHorizontal').lineStyle = 'Continuous';
range.format.borders('InsideVertical').lineStyle = 'Continuous';
range.format.borders('EdgeBottom').lineStyle = 'Continuous';
range.format.borders('EdgeLeft').lineStyle = 'Continuous';
range.format.borders('EdgeRight').lineStyle = 'Continuous';
range.format.borders('EdgeTop').lineStyle = 'Continuous';
ctx.executeAsync().then();
```