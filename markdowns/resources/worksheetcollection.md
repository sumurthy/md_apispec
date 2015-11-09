# WorksheetCollection resource type

Represents a collection of worksheet objects that are part of the workbook.

### JSON representation

Here is a JSON representation of the resource

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.worksheetcollection"
}-->

```json
{
  "items": [
    {
      "@odata.type": "microsoft.graph.worksheet"
    }
  ]
}

```
### Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|items|[Worksheet](worksheet.md) collection|A collection of worksheet objects. Read-only.|

### Relationships
None


### Methods

| Method		   | Return Type	|Description|
|:---------------|:--------|:----------|
|[List](../api/worksheet_list.md) | [Worksheet](worksheet.md) collection |Get worksheet object collection. |
|[Delete](../api/worksheetcollection_delete.md) | None |Delete WorksheetCollection object. |
|[ActiveWorksheet](../api/worksheetcollection_activeworksheet.md)|[Worksheet](worksheet.md)|Gets the currently active worksheet in the workbook.|
|[Add](../api/worksheetcollection_add.md)|[Worksheet](worksheet.md)|Adds a new worksheet to the workbook. The worksheet will be added at the end of existing worksheets.|
|[Item](../api/worksheetcollection_item.md)|[Worksheet](worksheet.md)|Gets a worksheet object using its Name or ID.|

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "WorksheetCollection resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->