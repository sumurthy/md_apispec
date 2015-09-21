# Worksheet Collection

### add(name: string)

```js
Excel.run(function (ctx) { 
	var wSheetName = 'Sample Name';
	var worksheet = ctx.workbook.worksheets.add(wSheetName);
	worksheet.load(name);
	return ctx.sync().then(function() {
		Console.log(worksheet.name);
	});
});
```

### getActiveWorksheet()

```js
Excel.run(function (ctx) {  
	var activeWorksheet = ctx.workbook.worksheets.getActiveWorksheet();
	activeWorksheet.load(name);
	return ctx.sync().then(function() {
			Console.log(activeWorksheet.name);
	});
});

```

### getItem(index: string)

```js
Excel.run(function (ctx) { 
	var wSheetName = 'Sheet1'; 
	var worksheet = ctx.workbook.worksheets.getItem(wSheetName);
	worksheet.load(index);
	return ctx.sync().then(function() {
			Console.log(worksheet.index);
	});
});

```

### Getter 


```js
Excel.run(function (ctx) { 
	var worksheets = ctx.workbook.worksheets;
	worksheets.load(items);
	return ctx.sync().then(function() {
		for (var i = 0; i < worksheets.items.length; i++)
		{
			Console.log(worksheets.items[i].name);
			Console.log(worksheets.items[i].index);
		}
	});
});

```
##### Getting the number of worksheets

```js
Excel.run(function (ctx) { 
	var worksheets = ctx.workbook.worksheets;
	tables.load(count);
	return ctx.sync().then(function() {
		Console.log("Worksheets: Count= " + worksheets.count);
	});
});

```