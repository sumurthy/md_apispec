# Worksheet Collection

### add(name: string)

```js
var wSheetName = 'Sample Name';
var ctx = new Excel.RequestContext();
var worksheet = ctx.workbook.worksheets.add(wSheetName);
worksheet.load(name);
ctx.executeAsync().then(function () {
	Console.log(worksheet.name);
});
```

### getActiveWorksheet()

```js
hellow!!!
var ctx = new Excel.RequestContext(); 
var activeWorksheet = ctx.workbook.worksheets.getActiveWorksheet();
activeWorksheet.load(name);
ctx.executeAsync().then(function () {
		Console.log(activeWorksheet.name);
});
```

### getItem(index: string)

```js
var ctx = new Excel.RequestContext();
var wSheetName = 'Sheet1'; 
var worksheet = ctx.workbook.worksheets.getItem(wSheetName);
worksheet.load(index);
ctx.executeAsync().then(function () {
		Console.log(worksheet.index);
});
```

### Getter 


```js
var ctx = new Excel.RequestContext();
var worksheets = ctx.workbook.worksheets;
worksheets.load(items);
ctx.executeAsync().then(function () {
	for (var i = 0; i < worksheets.items.length; i++)
	{
		Console.log(worksheets.items[i].name);
		Console.log(worksheets.items[i].index);
	}
});
```
##### Getting the number of worksheets

```js
var ctx = new Excel.RequestContext();
var worksheets = ctx.workbook.worksheets;
tables.load(count);
ctx.executeAsync().then(function () {
	Console.log("Worksheets: Count= " + worksheets.count);
});

```