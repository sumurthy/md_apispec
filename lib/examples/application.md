### Getter  
```js
var ctx = new Excel.RequestContext();
var application = ctx.workbook.application;
ctx.load(application);
ctx.executeAsync().then(function() {
	Console.log(application.calculationMode);
});
```
### calculate(calculationType: string)
```js
var ctx = new Excel.RequestContext();
ctx.workbook.application.calculate('Full');
ctx.executeAsync();
```