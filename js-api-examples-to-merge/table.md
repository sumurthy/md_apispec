# Table

### delete()
```js
Excel.run(function (ctx) { 
	var tableName = 'Table1';
	var table = ctx.workbook.tables.getItem(tableName);
	table.delete();
	return ctx.sync(); 
}); 

### getDataBodyRange()
```js
Excel.run(function (ctx) { 
	var tableName = 'Table1';
	var table = ctx.workbook.tables.getItem(tableName);
	var tableDataRange = table.getDataBodyRange();
	return ctx.sync().then(function() {
			Console.log(tableDataRange.address);
	});
});
```
### getHeaderRowRange()
```js
Excel.run(function (ctx) { 
	var tableName = 'Table1';
	var table = ctx.workbook.tables.getItem(tableName);
	var tableHeaderRange = table.getHeaderRowRange();
	return ctx.sync().then(function() {
		Console.log(tableHeaderRange.address);
	});
});
```

### getRange()
```js
Excel.run(function (ctx) { 
	var table = ctx.workbook.tables.getItem(tableName);
	var tableRange = table.getRange();
	return ctx.sync().then(function() {
			Console.log(tableRange.address);
	});
});
```

### getTotalRowRange()
```js
Excel.run(function (ctx) { 
	var tableName = 'Table1';
	var table = ctx.workbook.tables.getItem(tableName);
	var tableTotalsRange = table.getTotalRowRange();
	return ctx.sync().then(function() {
			Console.log(tableTotalsRange.address);
	});
});
```

### getter and setter

Get a table by name. 

```js
Excel.run(function (ctx) { 
	var tableName = 'Table1';
	var table = ctx.workbook.tables.getItem(tableName);
	return ctx.sync().then(function() {
			Console.log(table.index);
	});
});
```

Get a table by index.

```js
Excel.run(function (ctx) { 
	var index = 0;
	var table = ctx.workbook.tables.getItemAt(0);
	return ctx.sync().then(function() {
			Console.log(table.name);
	});
});
```

Set table style. 

```js
Excel.run(function (ctx) { 
	var tableName = 'Table1';
	var table = ctx.workbook.tables.getItem(tableName);
	table.name = 'Table1-Renamed';
	table.showTotals = false;
	table.tableStyle = 'TableStyleMedium2';
	table.load(tableStyle);
	return ctx.sync().then(function() {
			Console.log(table.tableStyle);
	});
});
```