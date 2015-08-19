# Update RangeFormat

Update the properties of rangeformat object.
## HTTP request
```http
PATCH /workbook/bindings/{id}/table/range/format
PATCH /workbook/tables/{id|name}/range/format
PATCH /workbook/worksheets/{id|name}/tables/{id|name}/range/format
PATCH /workbook/bindings/{id}/table/rows/{index}/range/format
PATCH /workbook/tables/{id|name}/rows/{index}/range/format
PATCH /workbook/worksheets/{id|name}/tables/{id|name}/rows/{index}/range/format
PATCH /workbook/bindings/{id}/table/columns/{id|name}/range/format
PATCH /workbook/tables/{id|name}/columns/{id|name}/range/format
PATCH /workbook/worksheets/{id|name}/tables/{id|name}/columns/{id|name}/range/format
PATCH /workbook/bindings/{id}/range/format
PATCH /workbook/worksheets/{id|name}/range({address})/format
PATCH /workbook/names/{name}/range/format
```

## Optional request headers
| Name       | Type | Description|
|:-----------|:------|:----------|
| X-Session-Id   | string  | The Excel workbook session id required to join the session managed by the server. If the session token has expired or is invalid, an error is returned.|

## Request body
In the request body, supply the values for relevant fields that should be updated. Existing properties that are not included in the request body will maintain their previous values or be recalculated based on changes to other property values. For best performance you shouldn't include existing values that haven't changed.

| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|horizontalAlignment|string|Represents the horizontal alignment for the specified object. Possible values are: `General`, `Left`, `Center`, `Right`, `Fill`, `Justify`, `CenterAcrossSelection`, `Distributed`.|
|verticalAlignment|string|Represents the vertical alignment for the specified object. Possible values are: `Top`, `Center`, `Bottom`, `Justify`, `Distributed`.|
|wrapText|bool|Indicates if Excel wraps the text in the object. A null value indicates that the entire range doesn't have uniform wrap setting|

## Response
If successful, this method returns a `200 OK` response code and updated [RangeFormat](../resources/rangeformat.md) object in the response body.
## Example
### HTTP request
### Response
