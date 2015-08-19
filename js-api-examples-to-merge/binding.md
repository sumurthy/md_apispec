
### getRange()
Below example uses binding object to get the associated range.

```js
var ctx = new Excel.RequestContext();
var binding = ctx.workbook.bindings.getItemAt(0);
var range = binding.getRange();
range.load(cellCount);
ctx.executeAsync().then(function() {
	Console.log(range.cellCount);
});
```

### getTable()
```js
var ctx = new Excel.RequestContext();

var binding = ctx.workbook.bindings.getItemAt(0);
var table = binding.getTable();
table.load(name);
ctx.executeAsync().then(function () {
		Console.log(table.name);
});
```

### getText()

```js
var ctx = new Excel.RequestContext();
var binding = ctx.workbook.bindings.getItemAt(0);
var text = binding.getText();
ctx.load(text);
ctx.executeAsync().then(function() {
	Console.log(text);
});
```

### Getter 

```js
var ctx = new Excel.RequestContext();
var binding = ctx.workbook.bindings.getItemAt(0);
binding.load(type);
ctx.executeAsync().then(function() {
	Console.log(binding.type);
});
```