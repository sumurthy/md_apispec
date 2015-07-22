# Table Column Collection

### add(index: number, values: object[][])

```js
var ctx = new Excel.RequestContext();
var tables = ctx.workbook.tables;
var values = [["Sample"], ["Values"], ["For"], ["New"], ["Column"]];
var column = tables.getItem("Table1").columns.add(null, values);
ctx.load(column);
ctx.executeAsync().then(function () {
	Console.log(column.name);
});
```

### getItem(id: object)

```js
var ctx = new Excel.RequestContext();
var tablecolumn = ctx.workbook.tables.getItem['Table1'].columns.getItem(0);
ctx.load(tablecolumn)
ctx.executeAsync().then(function () {
		Console.log(tablecolumn.name);
});
```

### getItemAt(index: number)
```js
var ctx = new Excel.RequestContext();
var tablecolumn = ctx.workbook.tables.getItem['Table1'].columns.getItemAt(0);
ctx.load(tablecolumn)
ctx.executeAsync().then(function () {
		Console.log(tablecolumn.name);
});
```
### Getter tablecolumn Collection

```js
var ctx = new Excel.RequestContext();
var tablecolumns = ctx.workbook.tables.getItem['Table1'].columns;
ctx.load(tablecolumns);
ctx.executeAsync().then(function () {
	Console.log("tablecolumns Count: " + tablecolumns.count);
	for (var i = 0; i < tablecolumns.items.length; i++)
	{
		Console.log(tablecolumns.items[i].name);
	}
});
```