
### getRange()
Below example uses binding object to get the associated range.

```js
Excel.run(function (ctx) { 
	var binding = ctx.workbook.bindings.getItemAt(0);
	var range = binding.getRange();
	range.load(cellCount);
	ctx.executeAsync().then(function() {
		Console.log(range.cellCount);
	});
});
```

### getTable()
```js
Excel.run(function (ctx) { 
	var binding = ctx.workbook.bindings.getItemAt(0);
	var table = binding.getTable();
	table.load(name);
	return ctx.sync().then(function() {
			Console.log(table.name);
	});
});
```

### getText()

```js
Excel.run(function (ctx) { 
	var binding = ctx.workbook.bindings.getItemAt(0);
	var text = binding.getText();
	ctx.load(text);
	ctx.executeAsync().then(function() {
		Console.log(text);
	});
});
```

### Getter 

```js
Excel.run(function (ctx) { 
	var binding = ctx.workbook.bindings.getItemAt(0);
	binding.load(type);
	ctx.executeAsync().then(function() {
		Console.log(binding.type);
	});
});
```