# Table Column Collection

### add(index: number, values: object[][])

```js
Excel.run(function (ctx) { 
	var tables = ctx.workbook.tables;
	var values = [["Sample"], ["Values"], ["For"], ["New"], ["Column"]];
	var column = tables.getItem("Table1").columns.add(null, values);
	column.load(name);
	return ctx.sync().then(function() {
		Console.log(column.name);
	});
});
```

### getItem(id: object)

```js
Excel.run(function (ctx) { 
	var tablecolumn = ctx.workbook.tables.getItem['Table1'].columns.getItem(0);
	tablecolumn.load(name);
	return ctx.sync().then(function() {
			Console.log(tablecolumn.name);
	});
});
```

### getItemAt(index: number)
```js
Excel.run(function (ctx) { 
	var tablecolumn = ctx.workbook.tables.getItem['Table1'].columns.getItemAt(0);
	tablecolumn.load(name);
	return ctx.sync().then(function() {
			Console.log(tablecolumn.name);
	});
});
```
### Getter tablecolumn Collection

```js
Excel.run(function (ctx) { 
	var tablecolumns = ctx.workbook.tables.getItem['Table1'].columns;
	tablecolumns.load(items);
	return ctx.sync().then(function() {
		Console.log("tablecolumns Count: " + tablecolumns.count);
		for (var i = 0; i < tablecolumns.items.length; i++)
		{
			Console.log(tablecolumns.items[i].name);
		}
	});
});
```