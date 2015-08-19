# Table Row
### delete()  

```js
var tableName = 'Table1';
var ctx = new Excel.RequestContext();
var row = ctx.workbook.tables.getItem(tableName).tableRows.getItemAt(2);
row.delete();
ctx.executeAsync();
```

### getRange() 

```js
var tableName = 'Table1';
var ctx = new Excel.RequestContext();
var row = ctx.workbook.tables.getItem(tableName).tableRows.getItemAt(0);
var rowRange = row.getRange();
rowRange.load(address);
ctx.executeAsync().then(function () {
	Console.log(rowRange.address);
});
```

### Getter and setter Table Row 

```js
var tableName = 'Table1';
var ctx = new Excel.RequestContext();
var row = ctx.workbook.tables.getItem(tableName).tableRows.getItem(0);
row.load(index);
ctx.executeAsync().then(function () {
	Console.log(row.index);
});
```

```js
var ctx = new Excel.RequestContext();
var tables = ctx.workbook.tables;
var newValues = [["New", "Values", "For", "New", "Row"]];
var row = ctx.workbook.tables.getItem(tableName).tableRows.getItemAt(2);
row.values = newValues;
row.load(values);
ctx.executeAsync().then(function () {
	Console.log(row.values);
});
```