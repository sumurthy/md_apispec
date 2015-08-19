### Getter  
```js
var ctx = new Excel.RequestContext();
var application = ctx.workbook.application;
application.load(calculationMode);
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

