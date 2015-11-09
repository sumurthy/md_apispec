# Binding resource type

Represents an Office.js binding that is defined in the workbook.

### JSON representation

Here is a JSON representation of the resource

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.binding"
}-->

```json
{
  "id": "string-value",
  "type": "string-value"
}

```
### Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|id|string|Represents binding identifier. Read-only.|
|type|string|Returns the type of the binding. Possible values are: `Range`, `Table`, `Text`. Read-only.|

### Relationships
None


### Methods

| Method		   | Return Type	|Description|
|:---------------|:--------|:----------|
|[Get Binding](../api/binding_get.md) | [Binding](binding.md) |Read properties and relationships of binding object.|
|[Delete](../api/binding_delete.md) | None |Delete Binding object. |
|[Range](../api/binding_range.md)|[Range](range.md)|Returns the range represented by the binding. Will throw an error if binding is not of the correct type.|
|[Table](../api/binding_table.md)|[Table](table.md)|Returns the table represented by the binding. Will throw an error if binding is not of the correct type.|
|[Text](../api/binding_text.md)|string|Returns the text represented by the binding. Will throw an error if binding is not of the correct type.|

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "Binding resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->