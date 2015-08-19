# Range

### clear(applyTo: string)

Below example clears format and contents of the range. 

```js
var sheetName = "Sheet1";
var rangeAddress = "D:F";
var ctx = new Excel.RequestContext();
var range = ctx.workbook.worksheets.getItem(sheetName).getRange(rangeAddress);
range.clear();
ctx.executeAsync();
```

### delete(shift: string)

```js
var sheetName = "Sheet1";
var rangeAddress = "D:F";
var ctx = new Excel.RequestContext();
var range = ctx.workbook.worksheets.getItem(sheetName).getRange(rangeAddress);
range.delete();
ctx.executeAsync();
```

### getCell(row: number, column: number)

```js
var sheetName = "Sheet1";
var rangeAddress = "A1:F8";
var ctx = new Excel.RequestContext();
var worksheet = ctx.workbook.worksheets.getItem(sheetName);
var range = worksheet.getRange(rangeAddress);
var cell = range.cell(0,0);
cell.load(address);
ctx.executeAsync().then(function() {
	Console.log(cell.address);
});
```

### getEntireColumn()

Note: the grid properties of the Range (values, numberFormat, formula) contains `null` since the Range in question is unbounded.

```js
var sheetName = "Sheet1";
var rangeAddress = "D:F";
var ctx = new Excel.RequestContext();
var range = ctx.workbook.worksheets.getItem(sheetName).getRange(rangeAddress);
var rangeEC = range.getEntireColumn();
rangeEC.load(address);
ctx.executeAsync().then(function() {
	Console.log(rangeEC.address);
});
```
### getBoundingRect(anotherRange: object)

```js
var sheetName = "Sheet1";
var rangeAddress = "D4:G6";
var ctx = new Excel.RequestContext();
var range = ctx.workbook.worksheets.getItem(sheetName).getRange(rangeAddress);
var range = range.getBoundingRect("G4:H8");
range.load(address);
ctx.executeAsync().then(function() {
	Console.log(range.address); // Prints Sheet1!D4:H8
});
```

### getEntireRow()
```js
var sheetName = "Sheet1";
var rangeAddress = "D:F";
var ctx = new Excel.RequestContext();
var range = ctx.workbook.worksheets.getItem(sheetName).getRange(rangeAddress);
var rangeER = range.getEntireRow();
rangeER.load(address);
ctx.executeAsync().then(function() {
	Console.log(rangeER.address);
});
```
The grid properties of the Range (values, numberFormat, formula) contains `null` since the Range in question is unbounded.

### getColumn(column: number)

```js
var sheetName = "Sheet19";
var rangeAddress = "A1:F8";
var ctx = new Excel.RequestContext();
var range = ctx.workbook.worksheets.getItem(sheetName).getRange(rangeAddress).getColumn(1);
range.load(address);
ctx.executeAsync().then(function() {
	Console.log(range.address); // prints Sheet1!B1:B8
});
```

### getLastCell()

```js
var sheetName = "Sheet1";
var rangeAddress = "A1:F8";
var ctx = new Excel.RequestContext();
var range = ctx.workbook.worksheets.getItem(sheetName).getRange(rangeAddress).getLastCell();
range.load(address);
ctx.executeAsync().then(function() {
	Console.log(range.address); // prints Sheet1!F8
});
```

### getLastColumn()

```js
var sheetName = "Sheet1";
var rangeAddress = "A1:F8";
var ctx = new Excel.RequestContext();
var range = ctx.workbook.worksheets.getItem(sheetName).getRange(rangeAddress).getLastColumn();
range.load(address);
ctx.executeAsync().then(function() {
	Console.log(range.address); // prints Sheet1!F1:F8
});
```

### getLastRow()

```js
var sheetName = "Sheet1";
var rangeAddress = "A1:F8";
var ctx = new Excel.RequestContext();
var range = ctx.workbook.worksheets.getItem(sheetName).getRange(rangeAddress).getLastRow();
range.load(address);
ctx.executeAsync().then(function() {
	Console.log(range.address); // prints Sheet1!A8:F8
});
```


### getRow(row: number)

```js
var sheetName = "Sheet1";
var rangeAddress = "A1:F8";
var ctx = new Excel.RequestContext();
var range = ctx.workbook.worksheets.getItem(sheetName).getRange(rangeAddress).getRow(1);
range.load(address);
ctx.executeAsync().then(function() {
	Console.log(range.address); // prints Sheet1!A2:F2
});
```

### getIntersection(anotherRange: object)

```js
var sheetName = "Sheet1";
var rangeAddress = "A1:F8";
var ctx = new Excel.RequestContext();
var range = ctx.workbook.worksheets.getItem(sheetName).getRange(rangeAddress).getIntersection("D4:G6");
range.load(address);
ctx.executeAsync().then(function() {
	Console.log(range.address); // prints Sheet1!D4:F6
});
```

### getOffsetRange(rowOffset: number, columnOffset: number)

```js
var sheetName = "Sheet1";
var rangeAddress = "D4:F6";
var ctx = new Excel.RequestContext();
var range = ctx.workbook.worksheets.getItem(sheetName).getRange(rangeAddress).getOffsetRange(-1,4);
range.load(address);
ctx.executeAsync().then(function() {
	Console.log(range.address); // prints Sheet1!H3:K5
});
```

### getUsedRange()

```js
var sheetName = "Sheet1";
var rangeAddress = "D:F";
var ctx = new Excel.RequestContext();
var range = ctx.workbook.worksheets.getItem(sheetName).getRange(rangeAddress);
var rangeUR = range.getUsedRange();
rangeUR.load(address);
ctx.executeAsync().then(function() {
	Console.log(rangeUR.address);
});
```

### insert(shift: string)

```js
var sheetName = "Sheet1";
var rangeAddress = "F5:F10";
var ctx = new Excel.RequestContext();
var range = ctx.workbook.worksheets.getItem(sheetName).getRange(rangeAddress);
range.insert();
ctx.executeAsync();
```

### select()

```js
var sheetName = "Sheet1";
var rangeAddress = "F5:F10";
var ctx = new Excel.RequestContext();
var range = ctx.workbook.worksheets.getItem(sheetName).getRange(rangeAddress);
range.select();
ctx.executeAsync();
```

### Getter and setter 

Below example uses range address to get the range object.

```js
var sheetName = "Sheet1";
var rangeAddress = "A1:F8";
var ctx = new Excel.RequestContext();
var worksheet = ctx.workbook.worksheets.getItem(sheetName);
var range = worksheet.getRange(rangeAddress);
range.load(cellCount);
ctx.executeAsync().then(function() {
	Console.log(range.cellCount);
});
```

Below example uses a named-range to get the range object.

```js
var rangeName = 'MyRange';
var ctx = new Excel.RequestContext();
var range = ctx.workbook.names.getItem(rangeName).range;
range.load(cellCount);
ctx.executeAsync().then(function() {
	Console.log(range.cellCount);
});
```

The example below sets number-format, values and formulas on a grid that contains 2x3 grid.

```js

var sheetName = "Sheet1";
var rangeAddress = "F5:G7";
var numberFormat = [[null, "d-mmm"], [null, "d-mmm"], [null, null]]
var values = [["Today", 42147], ["Tomorrow", "5/24"], ["Difference in days", null]];
var formula = [[null,null], [null,null], [null,"=G6-G5"]];
var range = ctx.workbook.worksheets.getItem(sheetName).getRange(rangeAddress);
range.numberFormat = numberFormat;
range.values = values;
range.formula = formula;
range.load(text);
ctx.executeAsync().then(function() {
	Console.log(range.text);
});
```
Get the worksheet containing the range. 

```js
var ctx = new Excel.RequestContext();
var names = ctx.workbook.names;
var namedItem = names.getItem('MyRange');
range = namedItem.range;
var rangeWorksheet = range.worksheet;
rangeWorksheet.load(name);
ctx.executeAsync().then(function () {
		Console.log(rangeWorksheet.name);
});
```
