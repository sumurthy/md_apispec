# Table

### delete()
```js
var tableName = 'Table1';
var ctx = new Excel.RequestContext();
var table = ctx.workbook.tables.getItem(tableName);
table.delete();
ctx.executeAsync();
```

### getDataBodyRange()
```js
var tableName = 'Table1';
var ctx = new Excel.RequestContext();
var table = ctx.workbook.tables.getItem(tableName);
var tableDataRange = table.getDataBodyRange();
ctx.executeAsync().then(function () {
		Console.log(tableDataRange.address);
});
```
### getHeaderRowRange()
```js
var tableName = 'Table1';
var ctx = new Excel.RequestContext();
var table = ctx.workbook.tables.getItem(tableName);
var tableHeaderRange = table.getHeaderRowRange();
ctx.executeAsync().then(function () {
		Console.log(tableHeaderRange.address);
});
```

### getRange()
```js
var tableName = 'Table1';
var ctx = new Excel.RequestContext();
var table = ctx.workbook.tables.getItem(tableName);
var tableRange = table.getRange();
ctx.executeAsync().then(function () {
		Console.log(tableRange.address);
});
```

### getTotalRowRange()
```js
var tableName = 'Table1';
var ctx = new Excel.RequestContext();
var table = ctx.workbook.tables.getItem(tableName);
var tableTotalsRange = table.getTotalRowRange();
ctx.executeAsync().then(function () {
		Console.log(tableTotalsRange.address);
});
```

### getter and setter

Get a table by name. 

```js
var ctx = new Excel.RequestContext();
var tableName = 'Table1';
var table = ctx.workbook.tables.getItem(tableName);
ctx.executeAsync().then(function () {
		Console.log(table.index);
});
```

Get a table by index.

```js
var ctx = new Excel.RequestContext();
var index = 0;
var table = ctx.workbook.tables.getItemAt(0);
ctx.executeAsync().then(function () {
		Console.log(table.name);
});
```

Set table style. 

```js
var tableName = 'Table1';
var ctx = new Excel.RequestContext();
var table = ctx.workbook.tables.getItem(tableName);
table.name = 'Table1-Renamed';
table.showTotals = false;
table.tableStyle = 'TableStyleMedium2';
ctx.load(table);
ctx.executeAsync().then(function () {
		Console.log(table.tableStyle);
});
```