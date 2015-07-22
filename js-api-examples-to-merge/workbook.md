# Workbook

### getSelectedRange()

```js
var ctx = new Excel.RequestContext();
var selectedRange = ctx.workbook.getSelectedRange();
ctx.executeAsync().then(function () {
		Console.log(selectedRange.address);
});
```