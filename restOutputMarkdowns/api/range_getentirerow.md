# Range: EntireRow

Gets an object that represents the entire row of the range.
## HTTP request
```http
GET /workbook/bindings/{id}/table/range/getEntireRow
GET /workbook/tables/{id|name}/range/getEntireRow
GET /workbook/worksheets/{id|name}/tables/{id|name}/range/getEntireRow
GET /workbook/bindings/{id}/table/rows/{index}/range/getEntireRow
GET /workbook/tables/{id|name}/rows/{index}/range/getEntireRow
GET /workbook/worksheets/{id|name}/tables/{id|name}/rows/{index}/range/getEntireRow
GET /workbook/bindings/{id}/table/columns/{id|name}/range/getEntireRow
GET /workbook/tables/{id|name}/columns/{id|name}/range/getEntireRow
GET /workbook/worksheets/{id|name}/tables/{id|name}/columns/{id|name}/range/getEntireRow
GET /workbook/bindings/{id}/range/getEntireRow
GET /workbook/worksheets/{id|name}/range({address})/getEntireRow
GET /workbook/names/{name}/range/getEntireRow
```
## Optional query parameters
You can use the [OData query parameters](odata-optional-query-parameters.md) to restrict the shape of the objects returned from this call.
## Request headers
| Name       | Type | Description|
|:-----------|:------|:----------|
| X-Session-Token   | string  | The Excel workbook session token required to join the session managed by the server. If the session token has expired or is invalid, an error is returned.|

## Request body
Do not supply a request body for this method.


## Response
If successful, this method returns a `200 OK` response code and [Range](../resources/range.md) object in the response body.
## Example
### HTTP request
### Response
