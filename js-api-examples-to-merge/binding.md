
### getRange()
Below example uses binding object to get the associated range.

```js
var ctx = new Excel.RequestContext();
var binding = ctx.workbook.bindings.getItemAt(0);
var range = binding.getRange();
ctx.load(range);
ctx.executeAsync().then(function() {
	Console.log(range.cellCount);
});
```

### getTable()
```js
var ctx = new Excel.RequestContext();

var binding = ctx.workbook.bindings.getItemAt(0);
var table = binding.getTable();
ctx.load(table);
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
ctx.load(binding);
ctx.executeAsync().then(function() {
	Console.log(binding.type);
});
```