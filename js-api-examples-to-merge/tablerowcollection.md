# Table Row Collection

### add(index: number, values: object[][])

```js
var ctx = new Excel.RequestContext();
var tables = ctx.workbook.tables;
var values = [["Sample", "Values", "For", "New", "Row"]];
var row = tables.getItem("Table1").rows.add(null, values);
row.load(index);
ctx.executeAsync().then(function () {
	Console.log(row.index);
});
```
### getItemAt(index: number)

```js
var ctx = new Excel.RequestContext();
var tablerow = ctx.workbook.tables.getItem('Table1').rows.getItemAt(0);
tablerow.load(name);
ctx.executeAsync().then(function () {
		Console.log(tablerow.name);
});
```
### Getter tablerow Collection

```js
var ctx = new Excel.RequestContext();
var tablerows = ctx.workbook.tables.getItem('Table1').rows;
tablerows.load(items);
ctx.executeAsync().then(function () {
	Console.log("tablerows Count: " + tablerows.count);
	for (var i = 0; i < tablerows.items.length; i++)
	{
		Console.log(tablerows.items[i].index);
	}
});
```