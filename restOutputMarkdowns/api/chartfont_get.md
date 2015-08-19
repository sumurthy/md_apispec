# Get ChartFont

Retrieve the properties and relationships of chartfont object.
## HTTP request
```http
GET /workbook/worksheets/{id|name}/charts/{name}/format/font
GET /workbook/worksheets/{id|name}/charts/{name}/title/format/font
GET /workbook/worksheets/{id|name}/charts/{name}/legend/format/font
GET /workbook/worksheets/{id|name}/charts/{name}/datalabels/format/font
GET /workbook/worksheets/{id|name}/charts/{name}/axes/valueaxis/title/format/font
GET /workbook/worksheets/{id|name}/charts/{name}/axes/seriesaxis/title/format/font
GET /workbook/worksheets/{id|name}/charts/{name}/axes/categoryaxis/title/format/font
GET /workbook/worksheets/{id|name}/charts/{name}/axes/valueaxis/format/font
GET /workbook/worksheets/{id|name}/charts/{name}/axes/seriesaxis/format/font
GET /workbook/worksheets/{id|name}/charts/{name}/axes/categoryaxis/format/font
```

## Optional query parameters
You can use the [OData query parameters](odata-optional-query-parameters.md) to restrict the shape of the objects returned from this call.
## Request headers
| Name       | Type | Description|
|:-----------|:------|:----------|
| X-Session-Id   | string  | The Excel workbook session id required to join the session managed by the server. If the session token has expired or is invalid, an error is returned.|

## Request body
Do not supply a request body for this method.
## Response
If successful, this method returns a `200 OK` response code and [ChartFont](../resources/chartfont.md) object in the response body.
## Example
### HTTP request
### Response
