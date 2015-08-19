# Update ChartFont

Update the properties of chartfont object.
## HTTP request
```http
PATCH /workbook/worksheets/{id|name}/charts/{name}/format/font
PATCH /workbook/worksheets/{id|name}/charts/{name}/title/format/font
PATCH /workbook/worksheets/{id|name}/charts/{name}/legend/format/font
PATCH /workbook/worksheets/{id|name}/charts/{name}/datalabels/format/font
PATCH /workbook/worksheets/{id|name}/charts/{name}/axes/valueaxis/title/format/font
PATCH /workbook/worksheets/{id|name}/charts/{name}/axes/seriesaxis/title/format/font
PATCH /workbook/worksheets/{id|name}/charts/{name}/axes/categoryaxis/title/format/font
PATCH /workbook/worksheets/{id|name}/charts/{name}/axes/valueaxis/format/font
PATCH /workbook/worksheets/{id|name}/charts/{name}/axes/seriesaxis/format/font
PATCH /workbook/worksheets/{id|name}/charts/{name}/axes/categoryaxis/format/font
```

## Optional request headers
| Name       | Type | Description|
|:-----------|:------|:----------|
| X-Session-Id   | string  | The Excel workbook session id required to join the session managed by the server. If the session token has expired or is invalid, an error is returned.|

## Request body
In the request body, supply the values for relevant fields that should be updated. Existing properties that are not included in the request body will maintain their previous values or be recalculated based on changes to other property values. For best performance you shouldn't include existing values that haven't changed.

| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|bold|bool|Represents the bold status of font.|
|color|string|HTML color code representation of the text color. E.g. #FF0000 represents Red.|
|italic|bool|Represents the italic status of the font.|
|name|string|Font name (e.g. "Calibri")|
|size|double|Size of the font (e.g. 11)|
|underline|string|Type of underline applied to the font. Possible values are: `None`, `Single`.|

## Response
If successful, this method returns a `200 OK` response code and updated [ChartFont](../resources/chartfont.md) object in the response body.
## Example
### HTTP request
### Response
