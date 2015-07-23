# Range

Range represents a set of one or more contiguous cells such as a cell, a row, a column, block of cells, etc.

## Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|address|string|Represents the range reference in A1-style. Address value will contain the Sheet reference (e.g. Sheet1!A1:B4). Read-only.|
|addressLocal|string|Represents range reference for the specified range in the language of the user. Read-only.|
|cellCount|int|Number of cells in the range. Read-only.|
|columnCount|int|Represents the total number of columns in the range. Read-only.|
|columnIndex|int|Represents the column number of the first cell in the range. Zero-indexed. Read-only.|
|formulas|object[][]|Represents the formula in A1-style notation.|
|formulasLocal|object[][]|Represents the formula in A1-style notation, in the user's language and number-formatting locale.  For example, the English "=SUM(A1, 1.5)" formula would become "=SUMME(A1; 1,5)" in German.|
|numberFormat|object[][]|Represents Excel's number format code for the given cell.|
|rowCount|int|Returns the total number of rows in the range. Read-only.|
|rowIndex|int|Returns the row number of the first cell in the range. Zero-indexed. Read-only.|
|text|object[][]|Text values of the specified range. The Text value will not depend on the cell width. The # sign substitution that happens in Excel UI will not affect the text value returned by the API. Read-only.|
|valueTypes|string|Represents the type of data of each cell. Read-only. Possible values are: `Unknown`, `Empty`, `String`, `Integer`, `Double`, `Boolean`, `Error`.|
|values|object[][]|Represents the raw values of the specified range. The data returned could be of type string, number, or a boolean. Cell that contain an error will return the error string.|

## Relationships
| Relationship | Type	|Description|
|:---------------|:--------|:----------|
|format|[RangeFormat](rangeformat.md)|Returns a format object, encapsulating the range's font, fill, borders, alignment, and other properties. Read-only.|
|worksheet|[Worksheet](worksheet.md)|The worksheet containing the current range. Read-only.|

## Tasks

| Task		   | Return Type	|Description|
|:---------------|:--------|:----------|
|[Get metadata](../api/range_get.md) | Range |Read properties and relationships of range object.|
|[Update](../api/range_update.md) | Range	|Update range object. |
|[Clear](../api/range_clear.md)|None|Clear range values, format, fill, border, etc.|
|[Delete](../api/range_delete.md)|None|Deletes the cells associated with the range.|
|[Get BoundingRect](../api/range_getboundingrect.md)|[Range](range.md)|Gets the smallest range object that encompasses the given ranges. For example, the GetBoundingRect of "B2:C5" and "D10:E15" is "B2:E16".|
|[Get Cell](../api/range_getcell.md)|[Range](range.md)|Gets the range object containing the single cell based on row and column numbers. The cell can be outside the bounds of its parent range, so long as it's stays within the worksheet grid. The returned cell is located relative to the top left cell of the range.|
|[Get Column](../api/range_getcolumn.md)|[Range](range.md)|Gets a column contained in the range.|
|[Get EntireColumn](../api/range_getentirecolumn.md)|[Range](range.md)|Gets an object that represents the entire column of the range.|
|[Get EntireRow](../api/range_getentirerow.md)|[Range](range.md)|Gets an object that represents the entire row of the range.|
|[Get Intersection](../api/range_getintersection.md)|[Range](range.md)|Gets the range object that represents the rectangular intersection of the given ranges.|
|[Get LastCell](../api/range_getlastcell.md)|[Range](range.md)|Gets the last cell within the range. For example, the last cell of "B2:D5" is "D5".|
|[Get LastColumn](../api/range_getlastcolumn.md)|[Range](range.md)|Gets the last column within the range. For example, the last column of "B2:D5" is "D2:D5".|
|[Get LastRow](../api/range_getlastrow.md)|[Range](range.md)|Gets the last row within the range. For example, the last row of "B2:D5" is "B5:D5".|
|[Get OffsetRange](../api/range_getoffsetrange.md)|[Range](range.md)|Gets an object which represents a range that's offset from the specified range. The dimension of the returned range will match this range. If the resulting range is forced outside the bounds of the worksheet grid, an exception will be thrown.|
|[Get Row](../api/range_getrow.md)|[Range](range.md)|Gets a row contained in the range.|
|[Get UsedRange](../api/range_getusedrange.md)|[Range](range.md)|Returns the used range of the given range object.|
|[Insert](../api/range_insert.md)|[Range](range.md)|Inserts a cell or a range of cells into the worksheet in place of this range, and shifts the other cells to make space. Returns a new Range object at the now blank space.|
|[Select](../api/range_select.md)|None|Selects the specified range in the Excel UI.|
