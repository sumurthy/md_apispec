# Range Border Collection 

### getItem(index: string)
```js
var sheetName = "Sheet1";
var rangeAddress = "A1:F8";
var ctx = new Excel.RequestContext();
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
var ctx = new Excel.RequestContext();
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
var ctx = new Excel.RequestContext();
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
range.format.borders.getItem('InsideHorizontal').style = 'Continuous';
range.format.borders.getItem('InsideVertical').style = 'Continuous';
range.format.borders.getItem('EdgeBottom').style = 'Continuous';
range.format.borders.getItem('EdgeLeft').style = 'Continuous';
range.format.borders.getItem('EdgeRight').style = 'Continuous';
range.format.borders.getItem('EdgeTop').style = 'Continuous';
ctx.executeAsync();
```