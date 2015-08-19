# Update RangeFont

Update the properties of rangefont object.
## HTTP request
```http
PATCH /workbook/bindings/{id}/table/range/format/font
PATCH /workbook/tables/{id|name}/range/format/font
PATCH /workbook/worksheets/{id|name}/tables/{id|name}/range/format/font
PATCH /workbook/bindings/{id}/table/rows/{index}/range/format/font
PATCH /workbook/tables/{id|name}/rows/{index}/range/format/font
PATCH /workbook/worksheets/{id|name}/tables/{id|name}/rows/{index}/range/format/font
PATCH /workbook/bindings/{id}/table/columns/{id|name}/range/format/font
PATCH /workbook/tables/{id|name}/columns/{id|name}/range/format/font
PATCH /workbook/worksheets/{id|name}/tables/{id|name}/columns/{id|name}/range/format/font
PATCH /workbook/bindings/{id}/range/format/font
PATCH /workbook/worksheets/{id|name}/range({address})/format/font
PATCH /workbook/names/{name}/range/format/font
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
|size|double|Font size.|
|underline|string|Type of underline applied to the font. Possible values are: `None`, `Single`, `Double`, `SingleAccountant`, `DoubleAccountant`.|

## Response
If successful, this method returns a `200 OK` response code and updated [RangeFont](../resources/rangefont.md) object in the response body.
## Example
### HTTP request
### Response
