# Range Format

### Getter and setter Range Format 

Below example selects all of the Range's format properties. 

```js
var sheetName = "Sheet1";
var rangeAddress = "F:G";
var ctx = new Excel.RequestContext();
var worksheet = ctx.workbook.worksheets.getItem(sheetName);
var range = worksheet.getRange(rangeAddress);
ctx.load(range, {expand: "fill, borders, font"} );
ctx.executeAsync().then(function() {
	Console.log(range.format.wrapText);
	Console.log(range.format.fill.color);
	Console.log(range.format.font.name);
	Console.log(range.format.borders.getItem('InsideHorizontal').lineStyle;	
});
```

The example below sets font name, fill color and wraps text. 

```js
var sheetName = "Sheet1";
var rangeAddress = "F:G";
var range = ctx.workbook.worksheets.getItem(sheetName).getRange(rangeAddress);
range.format.wrapText = true;
range.format.font.name = 'Times New Roman';
range.format.fill.color = '0000FF';
ctx.executeAsync();
```

The example below adds grid border around the range.

```js
var sheetName = "Sheet1";
var rangeAddress = "F:G";
var range = ctx.workbook.worksheets.getItem(sheetName).getRange(rangeAddress);
range.format.borders('InsideHorizontal').lineStyle = 'Continuous';
range.format.borders('InsideVertical').lineStyle = 'Continuous';
range.format.borders('EdgeBottom').lineStyle = 'Continuous';
range.format.borders('EdgeLeft').lineStyle = 'Continuous';
range.format.borders('EdgeRight').lineStyle = 'Continuous';
range.format.borders('EdgeTop').lineStyle = 'Continuous';
ctx.executeAsync();
```
