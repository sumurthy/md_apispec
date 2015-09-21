# Reference Collection

```js
var sheetName = "Sheet1";
var rangeAddress = "A1:B2";
Excel.run(function (ctx) { 
var range = ctx.workbook.worksheets.getItem(sheetName).getRange(rangeAddress);
ctx.references.add(range);
range.load(address);

return ctx.sync().then(function() {
	range.insert("Down");
	Console.log(range.address); // Address should be updated to A3:B4
	return ctx.sync();
});
```

### remove(rangeObject: range)

```js
var sheetName = "Sheet1";
var rangeAddress = "A1:B2";
Excel.run(function (ctx) { 
var range = ctx.workbook.worksheets.getItem(sheetName).getRange(rangeAddress);
ctx.references.add(range);
range.load(address);

return ctx.sync().then(function() {
	range.insert("Down");
	Console.log(range.address); // Address should be updated to A3:B4
	ctx.references.remove(range); 
	return ctx.sync();
});
```
