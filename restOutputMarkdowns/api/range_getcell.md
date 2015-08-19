# Range: Cell

Gets the range object containing the single cell based on row and column numbers. The cell can be outside the bounds of its parent range, so long as it's stays within the worksheet grid. The returned cell is located relative to the top left cell of the range.
## HTTP request
```http
GET /workbook/bindings/{id}/table/range/getCell
GET /workbook/tables/{id|name}/range/getCell
GET /workbook/worksheets/{id|name}/tables/{id|name}/range/getCell
GET /workbook/bindings/{id}/table/rows/{index}/range/getCell
GET /workbook/tables/{id|name}/rows/{index}/range/getCell
GET /workbook/worksheets/{id|name}/tables/{id|name}/rows/{index}/range/getCell
GET /workbook/bindings/{id}/table/columns/{id|name}/range/getCell
GET /workbook/tables/{id|name}/columns/{id|name}/range/getCell
GET /workbook/worksheets/{id|name}/tables/{id|name}/columns/{id|name}/range/getCell
GET /workbook/bindings/{id}/range/getCell
GET /workbook/worksheets/{id|name}/range({address})/getCell
GET /workbook/names/{name}/range/getCell
```
## Optional query parameters
You can use the [OData query parameters](odata-optional-query-parameters.md) to restrict the shape of the objects returned from this call.
## Request headers
| Name       | Type | Description|
|:-----------|:------|:----------|
| X-Session-Id   | string  | The Excel workbook session id required to join the session managed by the server. If the session token has expired or is invalid, an error is returned.|

## Request body
In the request body, provide a JSON object that with the following parameters.

| Parameter	   | Type	|Description|
|:---------------|:--------|:-----------|
|row|number|Row number of the cell to be retrieved. Zero-indexed.|
|column|number|Column number of the cell to be retrieved. Zero-indexed.|

## Response
If successful, this method returns a `200 OK` response code and [Range](../resources/range.md) object in the response body.
## Example
### HTTP request
### Response
