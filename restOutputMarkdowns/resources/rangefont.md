# RangeFont

This object represents the font attributes (font name, font size, color, etc.) for an object.

## Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|bold|bool|Represents the bold status of font.|
|color|string|HTML color code representation of the text color. E.g. #FF0000 represents Red.|
|italic|bool|Represents the italic status of the font.|
|name|string|Font name (e.g. "Calibri")|
|size|double|Font size.|
|underline|string|Type of underline applied to the font. Possible values are: `None`, `Single`, `Double`, `SingleAccountant`, `DoubleAccountant`.|

## Relationships
None


## Tasks

| Task		   | Return Type	|Description|
|:---------------|:--------|:----------|
| [Get metadata](../api/rangefont_get.md) | RangeFont |Read properties and relationships of rangeFont object.|
| [Update](../api/rangefont_update.md) | RangeFont	|Update rangeFont object. |
