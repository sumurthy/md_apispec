# Table

Represents an Excel table.

## [Properties](#getter-and-setter-examples)
| Property       | Type    |Description|Notes |
|:---------------|:--------|:----------|:-----|
|id|int|Returns a value that uniquely identifies the table in a given workbook. The value of the identifier remains the same even when the table is renamed. Read-only.||
|name|string|Name of the table.||
|showHeaders|bool|Indicates whether the header row is visible or not. This value can be set to show or remove the header row.||
|showTotals|bool|Indicates whether the total row is visible or not. This value can be set to show or remove the total row.||
|style|string|Constant value that represents the Table style. Possible values are: TableStyleLight1 thru TableStyleLight21, TableStyleMedium1 thru TableStyleMedium28, TableStyleStyleDark1 thru TableStyleStyleDark11. A custom user-defined style present in the workbook can also be specified.||

## Relationships
None

## Methods
| Methos           | Type    |Description|Notes |
|:---------------|:--------|:----------|:-----|
|delete()|void|Deletes the table.||
|getDataBodyRange()|[Range](range.md)|Gets the range object associated with the data body of the table.||
|getHeaderRowRange()|[Range](range.md)|Gets the range object associated with header row of the table.||
|getRange()|[Range](range.md)|Gets the range object associated with the entire table.||
|getTotalRowRange()|[Range](range.md)|Gets the range object associated with totals row of the table.||

## API Specification

### delete()
Deletes the table.

#### Syntax
tableObject.delete();

#### Parameters
None

#### Examples
```js
var tableName = 'Table1';
var ctx = new Excel.ExcelClientContext();
var table = ctx.workbook.tables.getItem(tableName);
ctx.executeAsync().then();
```


[Back](#methods)

### getDataBodyRange()
Gets the range object associated with the data body of the table.

#### Syntax
tableObject.getDataBodyRange();

#### Parameters
None

#### Examples
```js
var tableName = 'Table1';
var ctx = new Excel.ExcelClientContext();
var table = ctx.workbook.tables.getItem(tableName);
ctx.executeAsync().then(function () {
		Console.log(tableDataRange.address);
});
```

[Back](#methods)

### getHeaderRowRange()
Gets the range object associated with header row of the table.

#### Syntax
tableObject.getHeaderRowRange();

#### Parameters
None

#### Examples
```js
var tableName = 'Table1';
var ctx = new Excel.ExcelClientContext();
var table = ctx.workbook.tables.getItem(tableName);
ctx.executeAsync().then(function () {
		Console.log(tableHeaderRange.address);
});
```


[Back](#methods)

### getRange()
Gets the range object associated with the entire table.

#### Syntax
tableObject.getRange();

#### Parameters
None

#### Examples
```js
var tableName = 'Table1';
var ctx = new Excel.ExcelClientContext();
var table = ctx.workbook.tables.getItem(tableName);
ctx.executeAsync().then(function () {
		Console.log(tableRange.address);
});
```


[Back](#methods)

### getTotalRowRange()
Gets the range object associated with totals row of the table.

#### Syntax
tableObject.getTotalRowRange();

#### Parameters
None

#### Examples
```js
var tableName = 'Table1';
var ctx = new Excel.ExcelClientContext();
var table = ctx.workbook.tables.getItem(tableName);
ctx.executeAsync().then(function () {
		Console.log(tableTotalsRange.address);
});
```


[Back](#methods)

#### Getter and Setter Examples

Get a table by name. 

```js
var ctx = new Excel.ExcelClientContext();
var tableName = 'Table1';
var table = ctx.workbook.tables.getItem(tableName);
ctx.executeAsync().then(function () {
		Console.log(table.index);
});
```

Get a table by index.

```js
var ctx = new Excel.ExcelClientContext();
var index = 0;
var table = ctx.workbook.tables.getItemAt(0);
ctx.executeAsync().then(function () {
		Console.log(table.name);
});
```

Set table style. 

```js
var tableName = 'Table1';
var ctx = new Excel.ExcelClientContext();
var table = ctx.workbook.tables.getItem(tableName);
table.name = 'Table1-Renamed';
table.showTotals = false;
table.tableStyle = 'TableStyleMedium2';
ctx.load(table);
ctx.executeAsync().then(function () {
		Console.log(table.tableStyle);
});
```[Back](#properties)
