# Workbook

Workbook is the top level object which contains related workbook objects such as worksheets, tables, ranges, etc.

## Properties
None

## Relationships
None

## Methods
| Methos           | Type    |Description|Notes |
|:---------------|:--------|:----------|:-----|
|getSelectedRange()|[Range](range.md)|Gets the currently selected range from the workbook.||

## API Specification

### getSelectedRange()
Gets the currently selected range from the workbook.

#### Syntax
workbookObject.getSelectedRange();

#### Parameters
None
#### Returns
#### [Range](range.md)

#### Examples

```js
var ctx = new Excel.ExcelClientContext();
ctx.executeAsync().then(function () {
		Console.log(selectedRange.address);
});
```
[Back](#methods)

