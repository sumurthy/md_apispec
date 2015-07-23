# NamedItem

Represents a defined name for a range of cells or value. Names can be primitive named objects (as seen in the type below), range object, reference to a range. This object can be used to obtain range object associated with names.

## Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|name|string|The name of the object. Read-only.|
|type|string|Indicates what type of reference is associated with the name. Read-only. Possible values are: `String`, `Integer`, `Double`, `Boolean`, `Range`.|
|value|object|Represents the formula that the name is defined to refer to. E.g. =Sheet14!$B$2:$H$12, =4.75, etc. Read-only.|
|visible|bool|Specifies whether the object is visible or not.|

## Relationships
None


## Tasks

| Task		   | Return Type	|Description|
|:---------------|:--------|:----------|
|[Get metadata](../api/nameditem_get.md) | NamedItem |Read properties and relationships of namedItem object.|
|[Update](../api/nameditem_update.md) | NamedItem	|Update namedItem object. |
|[Get Range](../api/nameditem_getrange.md)|[Range](range.md)|Returns the range object that is associated with the name. Throws an exception if the named item's type is not a range.|
