# Worksheet

An Excel worksheet is a grid of cells. It can contain data, tables, charts, etc.

## Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|id|string|Returns a value that uniquely identifies the worksheet in a given workbook. The value of the identifier remains the same even when the worksheet is renamed or moved. Read-only.|
|name|string|The display name of the worksheet.|
|position|int|The zero-based position of the worksheet within the workbook.|
|visibility|string|The Visibility of the worksheet, Read-only. Possible values are: `Visible`, `Hidden`, `VeryHidden`.|

## Relationships
| Relationship | Type	|Description|
|:---------------|:--------|:----------|
|charts|[ChartCollection](chartcollection.md)|Returns collection of charts that are part of the worksheet. Read-only.|
|tables|[TableCollection](tablecollection.md)|Collection of tables that are part of the worksheet. Read-only.|

## Tasks

| Task		   | Return Type	|Description|
|:---------------|:--------|:----------|
|[Get metadata](../api/worksheet_get.md) | Worksheet |Read properties and relationships of worksheet object.|
|[Update](../api/worksheet_update.md) | Worksheet	|Update worksheet object. |
|[Activate](../api/worksheet_activate.md)|None|Activate the worksheet in the Excel UI.|
|[Delete](../api/worksheet_delete.md)|None|Deletes the worksheet from the workbook.|
|[Get Cell](../api/worksheet_getcell.md)|[Range](range.md)|Gets the range object containing the single cell based on row and column numbers. The cell can be outside the bounds of its parent range, so long as it's stays within the worksheet grid.|
|[Get Range](../api/worksheet_getrange.md)|[Range](range.md)|Gets the range object specified by the address or name.|
|[Get UsedRange](../api/worksheet_getusedrange.md)|[Range](range.md)|The used range is the smallest range than encompasses any cells that have a value or formatting assigned to them. If the worksheet is blank, this function will return the top left cell.|
