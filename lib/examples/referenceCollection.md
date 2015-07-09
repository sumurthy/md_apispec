# Reference Collection

```js
var sheetName = "Sheet1";
var rangeAddress = "A1:B2";
var ctx = new Excel.RequestContext();
var range = ctx.workbook.worksheets.getItem(sheetName).getRange(rangeAddress);
ctx.references.add(range);
ctx.load(range);

ctx.executeAsync().then(function () {
	range.insert("Down");
	Console.log(range.address); // Address should be updated to A3:B4
	ctx.executeAsync();
});
```

### remove(rangeObject: range)

```js
var sheetName = "Sheet1";
var rangeAddress = "A1:B2";
var ctx = new Excel.RequestContext();
var range = ctx.workbook.worksheets.getItem(sheetName).getRange(rangeAddress);
ctx.references.add(range);
ctx.load(range);

ctx.executeAsync().then(function () {
	range.insert("Down");
	Console.log(range.address); // Address should be updated to A3:B4
	ctx.references.remove(range); 
	ctx.executeAsync();
});
```
