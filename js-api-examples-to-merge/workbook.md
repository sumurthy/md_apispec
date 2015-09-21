# Workbook

### getSelectedRange()

```js
Excel.run(function (ctx) { 
var selectedRange = ctx.workbook.getSelectedRange();
return ctx.sync().then(function() {
		Console.log(selectedRange.address);
});
```