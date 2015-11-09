# BindingCollection resource type

Represents the collection of all the binding objects that are part of the workbook.

### JSON representation

Here is a JSON representation of the resource

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.bindingcollection"
}-->

```json
{
  "count": 1024,
  "items": [
    {
      "@odata.type": "microsoft.graph.binding"
    }
  ]
}

```
### Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|count|int|Returns the number of bindings in the collection. Read-only.|
|items|[Binding](binding.md) collection|A collection of binding objects. Read-only.|

### Relationships
None


### Methods

| Method		   | Return Type	|Description|
|:---------------|:--------|:----------|
|[List](../api/binding_list.md) | [Binding](binding.md) collection |Get binding object collection. |
|[Delete](../api/bindingcollection_delete.md) | None |Delete BindingCollection object. |
|[Item](../api/bindingcollection_item.md)|[Binding](binding.md)|Gets a binding object by ID.|
|[ItemAt](../api/bindingcollection_itemat.md)|[Binding](binding.md)|Gets a binding object based on its position in the items array.|

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "BindingCollection resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->