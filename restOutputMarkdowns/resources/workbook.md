# Workbook

Workbook is the top level object which contains related workbook objects such as worksheets, tables, ranges, etc.

## Properties
None

## Relationships
| Relationship | Type	|Description|
|:---------------|:--------|:----------|
|application|[Application](application.md)|Represents Excel application instance that contains this workbook. Read-only.|
|bindings|[BindingCollection](bindingcollection.md)|Represents a collection of bindings that are part of the workbook. Read-only.|
|names|[NamedItemCollection](nameditemcollection.md)|Represents a collection of workbook scoped named items (named ranges and constants). Read-only.|
|tables|[TableCollection](tablecollection.md)|Represents a collection of tables associated with the workbook. Read-only.|
|worksheets|[WorksheetCollection](worksheetcollection.md)|Represents a collection of worksheets associated with the workbook. Read-only.|

## Tasks

| Task		   | Return Type	|Description|
|:---------------|:--------|:----------|
|[Get SelectedRange](../api/workbook_getselectedrange.md)|[Range](range.md)|Gets the currently selected range from the workbook.|
