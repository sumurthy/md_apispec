# Workbook resource type

Workbook is the top level object which contains related workbook objects such as worksheets, tables, ranges, etc.

### JSON representation

Here is a JSON representation of the resource

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.workbook"
}-->

```json
{
}

```
### Properties
None

### Relationships
| Relationship | Type	|Description|
|:---------------|:--------|:----------|
|application|[Application](application.md)|Represents Excel application instance that contains this workbook. Read-only.|
|bindings|[BindingCollection](bindingcollection.md) collection|Represents a collection of bindings that are part of the workbook. Read-only.|
|names|[NamedItemCollection](nameditemcollection.md) collection|Represents a collection of workbook scoped named items (named ranges and constants). Read-only.|
|tables|[TableCollection](tablecollection.md) collection|Represents a collection of tables associated with the workbook. Read-only.|
|worksheets|[WorksheetCollection](worksheetcollection.md) collection|Represents a collection of worksheets associated with the workbook. Read-only.|

### Methods

| Method		   | Return Type	|Description|
|:---------------|:--------|:----------|
|[Create BindingCollection](../api/workbook_post_bindings.md) |[BindingCollection](bindingcollection.md)| Create a new BindingCollection by posting to the bindings collection.|
|[List bindings](../api/workbook_list_bindings.md) |[BindingCollection](bindingcollection.md) collection| Get a BindingCollection object collection.|
|[Create NamedItemCollection](../api/workbook_post_names.md) |[NamedItemCollection](nameditemcollection.md)| Create a new NamedItemCollection by posting to the names collection.|
|[List names](../api/workbook_list_names.md) |[NamedItemCollection](nameditemcollection.md) collection| Get a NamedItemCollection object collection.|
|[Create TableCollection](../api/workbook_post_tables.md) |[TableCollection](tablecollection.md)| Create a new TableCollection by posting to the tables collection.|
|[List tables](../api/workbook_list_tables.md) |[TableCollection](tablecollection.md) collection| Get a TableCollection object collection.|
|[Create WorksheetCollection](../api/workbook_post_worksheets.md) |[WorksheetCollection](worksheetcollection.md)| Create a new WorksheetCollection by posting to the worksheets collection.|
|[List worksheets](../api/workbook_list_worksheets.md) |[WorksheetCollection](worksheetcollection.md) collection| Get a WorksheetCollection object collection.|
|[Delete](../api/workbook_delete.md) | None |Delete Workbook object. |
|[SelectedRange](../api/workbook_selectedrange.md)|[Range](range.md)|Gets the currently selected range from the workbook.|

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "Workbook resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->