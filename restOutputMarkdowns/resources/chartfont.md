# ChartFont

This object represents the font attributes (font name, font size, color, etc.) for a chart object.

## Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|bold|bool|Represents the bold status of font.|
|color|string|HTML color code representation of the text color. E.g. #FF0000 represents Red.|
|italic|bool|Represents the italic status of the font.|
|name|string|Font name (e.g. "Calibri")|
|size|double|Size of the font (e.g. 11)|
|underline|string|Type of underline applied to the font. Possible values are: `None`, `Single`.|

## Relationships
None


## Tasks

| Task		   | Return Type	|Description|
|:---------------|:--------|:----------|
|[Get metadata](../api/chartfont_get.md) | ChartFont |Read properties and relationships of chartFont object.|
|[Update](../api/chartfont_update.md) | ChartFont	|Update chartFont object. |
