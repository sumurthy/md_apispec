# TableColumnCollection

Represents a collection of all the columns that are part of the table.

## [Properties](#getter-examples)
| Property       | Type    |Description|Notes |
|:---------------|:--------|:----------|:-----|
|count|int|Returns the number of columns in the table. Read-only.||
|items|[TableColumnCollection](tablecolumncollection.md)|A collection of tableColumn objects. Read-only.||

## Relationships
None

## Methods
| Methos           | Type    |Description|Notes |
|:---------------|:--------|:----------|:-----|
|add(index: number, values: object[][])|[TableColumn](tablecolumn.md)|Adds a new column to the table.||
|getItem(id: object)|[TableColumn](tablecolumn.md)|Gets a column object by Name or ID.||
|getItemAt(index: number)|[TableColumn](tablecolumn.md)|Gets a column based on its position in the collection.||

## API Specification

### add(index: number, values: object[][])
Adds a new column to the table.

#### Syntax
tableColumnCollectionObject.add(index, values);

#### Parameters
| Parameter       | Type    |Description|
|:---------------|:--------|:----------|
|index|number|Optional. Specifies the relative position of the new column. The previous column at this position is shifted to the right. The index value should be equal to or less than the last column's index value, so it cannot be used to append a column at the end of the table. Zero-indexed.|
|values|object[][]|A 2-dimensional array of unformatted values of the table column.|

#### Examples
```js

```

[Back](#methods)

### getItem(id: object)
Gets a column object by Name or ID.

#### Syntax
tableColumnCollectionObject.getItem(id);

#### Parameters
| Parameter       | Type    |Description|
|:---------------|:--------|:----------|
|id|object|Optional.  Column Name or ID.|

#### Examples
```js

```

[Back](#methods)

### getItemAt(index: number)
Gets a column based on its position in the collection.

#### Syntax
tableColumnCollectionObject.getItemAt(index);

#### Parameters
| Parameter       | Type    |Description|
|:---------------|:--------|:----------|
|index|number|Optional. Index value of the object to be retrieved. Zero-indexed.|

#### Examples
```js
var ctx = new Excel.ExcelClientContext();
var tablecolumn = ctx.workbook.tables.getItem['Table1'].columns.getItemAt(0);
ctx.load(tablecolumn)
ctx.executeAsync().then(function () {
		Console.log(tablecolumn.name);
});
```

[Back](#methods)

#### Getter Examples

```js
var ctx = new Excel.ExcelClientContext();
var tablecolumns = ctx.workbook.tables.getItem['Table1'].columns;
ctx.load(tablecolumns);
ctx.executeAsync().then(function () {
	Console.log("tablecolumns Count: " + tablecolumns.count);
	for (var i = 0; i < tablecolumns.items.length; i++)
	{
		Console.log(tablecolumns.items[i].name);
	}
});
```[Back](#properties)
