# Worksheet

### activate()

```js
Excel.run(function (ctx) { 
var wSheetName = 'Sheet1';
var worksheet = ctx.workbook.worksheets.getItem(wSheetName);
worksheet.activate();
return ctx.sync(); 
}); 

### delete()

```js
var wSheetName = 'Sheet1';
Excel.run(function (ctx) { 
var worksheet = ctx.workbook.worksheets.getItem(wSheetName);
worksheet.delete();
return ctx.sync(); 
}); 

### getCell(row: number, column: number)

```js
var sheetName = "Sheet1";
var rangeAddress = "A1:F8";
Excel.run(function (ctx) { 
var worksheet = ctx.workbook.worksheets.getItem(sheetName);
var cell = worksheet.getCell(0,0);
cell.load(address);
ctx.executeAsync().then(function() {
	Console.log(cell.address);
});
```

### getRange(address: string)
Below example uses range address to get the range object.

```js
var sheetName = "Sheet1";
var rangeAddress = "A1:F8";
Excel.run(function (ctx) { 
var worksheet = ctx.workbook.worksheets.getItem(sheetName);
var range = worksheet.getRange(rangeAddress);
range.load(cellCount);
ctx.executeAsync().then(function() {
	Console.log(range.cellCount);
});
```

Below example uses a named-range to get the range object.

```js
var sheetName = "Sheet1";
var rangeName = 'MyRange';
Excel.run(function (ctx) { 
var range = ctx.workbook.worksheets.getItem(sheetName).getRange(rangeName);
range.load(address);
ctx.executeAsync().then(function() {
	Console.log(range.address);
});
```
### getUsedRange()

```js
Excel.run(function (ctx) { 
var wSheetName = 'Sheet1';
var worksheet = ctx.workbook.worksheets.getItem(wSheetName);
var usedRange = worksheet.getUsedRange();
usedRange.load(address);
return ctx.sync().then(function() {
		Console.log(usedRange.address);
});
```

### Getter and setter Worksheet

Get worksheet properties based on sheet name.
```js
Excel.run(function (ctx) { 
var wSheetName = 'Sheet1';
var worksheet = ctx.workbook.worksheets.getItem(wSheetName);
return ctx.sync().then(function() {
		Console.log(worksheet.index);
});
```

Set worksheet position. 

```js
Excel.run(function (ctx) { 
var wSheetName = 'Sheet1';
var worksheet = ctx.workbook.worksheets.getItem(wSheetName);
worksheet.position = 0;
return ctx.sync(); 
}); 


