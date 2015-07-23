# Binding

Represents an Office.js binding that is defined in the workbook.

## Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|id|string|Represents binding identifier. Read-only.|
|type|string|Returns the type of the binding. Read-only. Possible values are: `Range`, `Table`, `Text`.|

## Relationships
None


## Tasks

| Task		   | Return Type	|Description|
|:---------------|:--------|:----------|
|[Get metadata](../api/binding_get.md) | Binding |Read properties and relationships of binding object.|
|[Get Range](../api/binding_getrange.md)|[Range](range.md)|Returns the range represented by the binding. Will throw an error if binding is not of the correct type.|
|[Get Table](../api/binding_gettable.md)|[Table](table.md)|Returns the table represented by the binding. Will throw an error if binding is not of the correct type.|
|[Get Text](../api/binding_gettext.md)|string|Returns the text represented by the binding. Will throw an error if binding is not of the correct type.|
