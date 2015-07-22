# NamedItem

### getRange()

Returns the Range object that is associated with the name. `null` if the name is not of the type `Range`. Note: This API currently supports only the Workbook scoped items.**

```js
var ctx = new Excel.RequestContext();
var names = ctx.workbook.names;
var range = names.getItem('MyRange').getRange();
ctx.load(range);
ctx.executeAsync().then(function () {
		Console.log(range.address);
});
```

### Getter 

```js
var ctx = new Excel.RequestContext();
var names = ctx.workbook.names;
var namedItem = names.getItem('MyRange');
ctx.load(namedItem);
ctx.executeAsync().then(function () {
		Console.log(namedItem.type);
});
```
