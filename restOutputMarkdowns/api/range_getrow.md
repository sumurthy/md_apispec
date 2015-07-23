# Range: Row

Gets a row contained in the range.
## HTTP request
```http
GET /workbook/bindings/{id}/table/range/getRow
GET /workbook/tables/{id|name}/range/getRow
GET /workbook/worksheets/{id|name}/tables/{id|name}/range/getRow
GET /workbook/bindings/{id}/table/rows/{index}/range/getRow
GET /workbook/tables/{id|name}/rows/{index}/range/getRow
GET /workbook/worksheets/{id|name}/tables/{id|name}/rows/{index}/range/getRow
GET /workbook/bindings/{id}/table/columns/{id|name}/range/getRow
GET /workbook/tables/{id|name}/columns/{id|name}/range/getRow
GET /workbook/worksheets/{id|name}/tables/{id|name}/columns/{id|name}/range/getRow
GET /workbook/bindings/{id}/range/getRow
GET /workbook/worksheets/{id|name}/range({address})/getRow
GET /workbook/names/{name}/range/getRow
```
## Optional query parameters
You can use the [OData query parameters](odata-optional-query-parameters.md) to restrict the shape of the objects returned from this call.

## Request body
In the request body, provide a JSON object that with the following parameters.

| Parameter	   | Type	|Description|
|:---------------|:--------|:-----------|
|row|number|Row number of the range to be retrieved. Zero-indexed.|

## Response
If successful, this method returns a `200 OK` response code and [Range](../resources/range.md) object in the response body.
## Example
### HTTP request
### Response
