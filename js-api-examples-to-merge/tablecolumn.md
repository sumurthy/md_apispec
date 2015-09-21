# Table Column
### delete() 

```js
var tableName = 'Table1';
Excel.run(function (ctx) { 
var column = ctx.workbook.tables.getItem(tableName).tableColumns.getItemAt(2);
column.delete();
return ctx.sync(); 
}); 

### getDataBodyRange() 

```js
var tableName = 'Table1';
Excel.run(function (ctx) { 
var column = ctx.workbook.tables.getItem(tableName).tableColumns.getItemAt(0);
var dataBodyRange = column.getDataBodyRange();
dataBodyRange.load(address);
return ctx.sync().then(function() {
	Console.log(dataBodyRange.address);
});
```

### getHeaderRowRange()

```js
var tableName = 'Table1';
Excel.run(function (ctx) { 
var columns = ctx.workbook.tables.getItem(tableName).tableColumns.getItemAt(0);
var headerRowRange = columns.getHeaderRowRange();
headerRowRange.load(address);
return ctx.sync().then(function() {
	Console.log(headerRowRange.address);
});
```
### getRange() 

```js
var tableName = 'Table1';
Excel.run(function (ctx) { 
var columns = ctx.workbook.tables.getItem(tableName).tableColumns.getItemAt(0);
var columnRange = columns.getRange();
columnRange.load(address);
return ctx.sync().then(function() {
	Console.log(columnRange.address);
});
```

### getTotalRowRange() 

```js
var tableName = 'Table1';
Excel.run(function (ctx) { 
var columns = ctx.workbook.tables.getItem(tableName).tableColumns.getItemAt(0);
var totalRowRange = columns.getTotalRowRange();
totalRowRange.load(address);
return ctx.sync().then(function() {
	Console.log(totalRowRange.address);
});
```

### Getter and setter

```js
var tableName = 'Table1';
Excel.run(function (ctx) { 
var column = ctx.workbook.tables.getItem(tableName).tableColumns.getItem(0);
column.load(index);
return ctx.sync().then(function() {
	Console.log(column.index);
});
```

```js
Excel.run(function (ctx) { 
var tables = ctx.workbook.tables;
var newValues = [["New"], ["Values"], ["For"], ["New"], ["Column"]];
var column = ctx.workbook.tables.getItem(tableName).tableColumns.getItemAt(2);
column.values = newValues;
column.load(values);
return ctx.sync().then(function() {
	Console.log(column.values);
});
```