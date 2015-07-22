# Table Collection

### add(address: string, hasHeaders: bool)

```js
var ctx = new Excel.RequestContext();
var table = ctx.workbook.tables.add('Sheet1!A1:E7', true);
ctx.load(table);
ctx.executeAsync().then(function () {
	Console.log(table.name);
});

```
### getItem(id: object)

```js
var ctx = new Excel.RequestContext();
var tableName = 'Table1';
var table = ctx.workbook.tables.getItem(tableName);
ctx.executeAsync().then(function () {
		Console.log(table.index);
});
```

### getItemAt(index: number)

```js
var ctx = new Excel.RequestContext();
var table = ctx.workbook.tables.getItemAt(0);
ctx.executeAsync().then(function () {
		Console.log(table.name);
});
```

### Getter 

```js
var ctx = new Excel.RequestContext();
var tables = ctx.workbook.tables;
ctx.load(tables);
ctx.executeAsync().then(function () {
	Console.log("tables Count: " + tables.count);
	for (var i = 0; i < tables.items.length; i++)
	{
		Console.log(tables.items[i].name);
	}
});
```

Get the number of tables

```js
var ctx = new Excel.RequestContext();
var tables = ctx.workbook.tables;
ctx.load(tables);
ctx.executeAsync().then(function () {
	
});

```