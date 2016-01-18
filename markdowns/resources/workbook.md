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
|bindings|[Binding](binding.md) collection|Represents a collection of bindings that are part of the workbook. Read-only.|
|names|[NamedItem](nameditem.md) collection|Represents a collection of workbook scoped named items (named ranges and constants). Read-only.|
|tables|[Table](table.md) collection|Represents a collection of tables associated with the workbook. Read-only.|
|worksheets|[Worksheet](worksheet.md) collection|Represents a collection of worksheets associated with the workbook. Read-only.|

### Methods

| Method		   | Return Type	|Description|
|:---------------|:--------|:----------|
|[Create Binding](../api/workbook_post_bindings.md) |[Binding](binding.md)| Create a new Binding by posting to the bindings collection.|
|[List bindings](../api/workbook_list_bindings.md) |[Binding](binding.md) collection| Get a Binding object collection.|
|[Create NamedItem](../api/workbook_post_names.md) |[NamedItem](nameditem.md)| Create a new NamedItem by posting to the names collection.|
|[List names](../api/workbook_list_names.md) |[NamedItem](nameditem.md) collection| Get a NamedItem object collection.|
|[Create Table](../api/workbook_post_tables.md) |[Table](table.md)| Create a new Table by posting to the tables collection.|
|[List tables](../api/workbook_list_tables.md) |[Table](table.md) collection| Get a Table object collection.|
|[Create Worksheet](../api/workbook_post_worksheets.md) |[Worksheet](worksheet.md)| Create a new Worksheet by posting to the worksheets collection.|
|[List worksheets](../api/workbook_list_worksheets.md) |[Worksheet](worksheet.md) collection| Get a Worksheet object collection.|
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