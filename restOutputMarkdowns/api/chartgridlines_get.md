# Get ChartGridlines

Retrieve the properties and relationships of chartgridlines object.
## HTTP request
```http
GET /workbook/worksheets/{id|name}/charts/{name}/axes/valueaxis/minorgridlines
GET /workbook/worksheets/{id|name}/charts/{name}/axes/seriesaxis/minorgridlines
GET /workbook/worksheets/{id|name}/charts/{name}/axes/categoryaxis/minorgridlines
GET /workbook/worksheets/{id|name}/charts/{name}/axes/valueaxis/majorgridlines
GET /workbook/worksheets/{id|name}/charts/{name}/axes/seriesaxis/majorgridlines
GET /workbook/worksheets/{id|name}/charts/{name}/axes/categoryaxis/majorgridlines
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
If successful, this method returns a `200 OK` response code and [ChartGridlines](../resources/chartgridlines.md) object in the response body.
## Example
### HTTP request
### Response
