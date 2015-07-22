# Table Column
### delete() 

```js
var tableName = 'Table1';
var ctx = new Excel.RequestContext();
var column = ctx.workbook.tables.getItem(tableName).tableColumns.getItemAt(2);
column.delete();
ctx.executeAsync();
```

### getDataBodyRange() 

```js
var tableName = 'Table1';
var ctx = new Excel.RequestContext();
var column = ctx.workbook.tables.getItem(tableName).tableColumns.getItemAt(0);
var dataBodyRange = column.getDataBodyRange();
ctx.load(dataBodyRange);
ctx.executeAsync().then(function () {
	Console.log(dataBodyRange.address);
});
```

### getHeaderRowRange()

```js
var tableName = 'Table1';
var ctx = new Excel.RequestContext();
var columns = ctx.workbook.tables.getItem(tableName).tableColumns.getItemAt(0);
var headerRowRange = columns.getHeaderRowRange();
ctx.load(headerRowRange);
ctx.executeAsync().then(function () {
	Console.log(headerRowRange.address);
});
```
### getRange() 

```js
var tableName = 'Table1';
var ctx = new Excel.RequestContext();
var columns = ctx.workbook.tables.getItem(tableName).tableColumns.getItemAt(0);
var columnRange = columns.getRange();
ctx.load(range);
ctx.executeAsync().then(function () {
	Console.log(range.columnRange);
});
```

### getTotalRowRange() 

```js
var tableName = 'Table1';
var ctx = new Excel.RequestContext();
var columns = ctx.workbook.tables.getItem(tableName).tableColumns.getItemAt(0);
var totalRowRange = columns.getTotalRowRange();
ctx.load(totalRowRange);
ctx.executeAsync().then(function () {
	Console.log(totalRowRange.address);
});
```

### Getter and setter

```js
var tableName = 'Table1';
var ctx = new Excel.RequestContext();
var column = ctx.workbook.tables.getItem(tableName).tableColumns.getItem(0);
ctx.load(column);
ctx.executeAsync().then(function () {
	Console.log(column.index);
});
```

```js
var ctx = new Excel.RequestContext();
var tables = ctx.workbook.tables;
var newValues = [["New"], ["Values"], ["For"], ["New"], ["Column"]];
var column = ctx.workbook.tables.getItem(tableName).tableColumns.getItemAt(2);
column.values = newValues;
ctx.load(column);
ctx.executeAsync().then(function () {
	Console.log(column.values);
});
```