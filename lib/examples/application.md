### Getter  
```js
var ctx = new Excel.ExcelClientContext();
var application = ctx.workbook.application;
ctx.load(application);
ctx.executeAsync().then(function() {
	Console.log(application.calculationMode);
});
```
### calculate(calculationType: string)
```js
var ctx = new Excel.ExcelClientContext();
ctx.workbook.application.calculate('Full');
ctx.executeAsync().then();
```