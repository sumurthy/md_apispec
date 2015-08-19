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
dataBodyRange.load(address);
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
headerRowRange.load(address);
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
columnRange.load(address);
ctx.executeAsync().then(function () {
	Console.log(columnRange.address);
});
```

### getTotalRowRange() 

```js
var tableName = 'Table1';
var ctx = new Excel.RequestContext();
var columns = ctx.workbook.tables.getItem(tableName).tableColumns.getItemAt(0);
var totalRowRange = columns.getTotalRowRange();
totalRowRange.load(address);
ctx.executeAsync().then(function () {
	Console.log(totalRowRange.address);
});
```

### Getter and setter

```js
var tableName = 'Table1';
var ctx = new Excel.RequestContext();
var column = ctx.workbook.tables.getItem(tableName).tableColumns.getItem(0);
column.load(index);
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
column.load(values);
ctx.executeAsync().then(function () {
	Console.log(column.values);
});
```