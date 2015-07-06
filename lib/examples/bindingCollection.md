
### getItemAt(index: number)
```js
var ctx = new Excel.ExcelClientContext();
var lastPosition = ctx.workbook.bindings.count - 1;
var binding = ctx.workbook.bindings.getItemAt(lastPosition);
ctx.executeAsync().then(function () {
		Console.log(binding.id);
});
```

### Getter 

```js
var ctx = new Excel.ExcelClientContext();
var bindings = ctx.workbook.bindings;
ctx.load(bindings);
ctx.executeAsync().then(function () {
	for (var i = 0; i < bindings.items.length; i++)
	{
		Console.log(bindings.items[i].id);
		Console.log(bindings.items[i].index);
	}
});
```
Get the number of bindings

```js
var ctx = new Excel.ExcelClientContext();
var bindings = ctx.workbook.bindings;
ctx.load(bindings);
ctx.executeAsync().then(function () {
	Console.log("Bindings: Count= " + bindings.count);
});

```
