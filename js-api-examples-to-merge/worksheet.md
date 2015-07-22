# Worksheet

### activate()

```js
var ctx = new Excel.RequestContext();
var wSheetName = 'Sheet1';
var worksheet = ctx.workbook.worksheets.getItem(wSheetName);
worksheet.activate();
ctx.executeAsync();
```

### delete()

```js
var wSheetName = 'Sheet1';
var ctx = new Excel.RequestContext();
var worksheet = ctx.workbook.worksheets.getItem(wSheetName);
worksheet.delete();
ctx.executeAsync();
```

### getCell(row: number, column: number)

```js
var sheetName = "Sheet1";
var rangeAddress = "A1:F8";
var ctx = new Excel.RequestContext();
var worksheet = ctx.workbook.worksheets.getItem(sheetName);
var cell = worksheet.getCell(0,0);
ctx.load(cell);
ctx.executeAsync().then(function() {
	Console.log(cell.address);
});
```

### getRange(address: string)
Below example uses range address to get the range object.

```js
var sheetName = "Sheet1";
var rangeAddress = "A1:F8";
var ctx = new Excel.RequestContext();
var worksheet = ctx.workbook.worksheets.getItem(sheetName);
var range = worksheet.getRange(rangeAddress);
ctx.load(range);
ctx.executeAsync().then(function() {
	Console.log(range.cellCount);
});
```

Below example uses a named-range to get the range object.

```js
var sheetName = "Sheet1";
var rangeName = 'MyRange';
var ctx = new Excel.RequestContext();
var range = ctx.workbook.worksheets.getItem(sheetName).getRange(rangeName);
ctx.load(range);
ctx.executeAsync().then(function() {
	Console.log(range.address);
});
```
### getUsedRange()

```js
var ctx = new Excel.RequestContext();
var wSheetName = 'Sheet1';
var worksheet = ctx.workbook.worksheets.getItem(wSheetName);
var usedRange = worksheet.getUsedRange();
ctx.load(usedRange);
ctx.executeAsync().then(function () {
		Console.log(usedRange.address);
});
```

### Getter and setter Worksheet

Get worksheet properties based on sheet name.
```js
var ctx = new Excel.RequestContext();
var wSheetName = 'Sheet1';
var worksheet = ctx.workbook.worksheets.getItem(wSheetName);
ctx.executeAsync().then(function () {
		Console.log(worksheet.index);
});
```

Set worksheet position. 

```js
var ctx = new Excel.RequestContext();
var wSheetName = 'Sheet1';
var worksheet = ctx.workbook.worksheets.getItem(wSheetName);
worksheet.position = 0;
ctx.executeAsync();
```


