### getItem(id: string)

```js
var ctx = new Excel.RequestContext();
var binding = ctx.workbook.bindings.getItem("sampleBindingId");
ctx.executeAsync().then(function () {
		Console.log(binding.type);
});
```


### getItemAt(index: number)
```js
var ctx = new Excel.RequestContext();
var lastPosition = ctx.workbook.bindings.count - 1;
var binding = ctx.workbook.bindings.getItemAt(lastPosition);
ctx.executeAsync().then(function () {
		Console.log(binding.type); 
});
```

### Getter 

```js
var ctx = new Excel.RequestContext();
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
var ctx = new Excel.RequestContext();
var bindings = ctx.workbook.bindings;
ctx.load(bindings);
ctx.executeAsync().then(function () {
	Console.log("Bindings: Count= " + bindings.count);
});

```
