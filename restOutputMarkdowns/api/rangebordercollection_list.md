# List RangeBorder

Retrieve a list of rangeborder objects.
## HTTP request
```http
GET /workbook/bindings/{id}/table/range/format/borders
GET /workbook/tables/{id|name}/range/format/borders
GET /workbook/worksheets/{id|name}/tables/{id|name}/range/format/borders
GET /workbook/bindings/{id}/table/rows/{index}/range/format/borders
GET /workbook/tables/{id|name}/rows/{index}/range/format/borders
GET /workbook/worksheets/{id|name}/tables/{id|name}/rows/{index}/range/format/borders
GET /workbook/bindings/{id}/table/columns/{id|name}/range/format/borders
GET /workbook/tables/{id|name}/columns/{id|name}/range/format/borders
GET /workbook/worksheets/{id|name}/tables/{id|name}/columns/{id|name}/range/format/borders
GET /workbook/bindings/{id}/range/format/borders
GET /workbook/worksheets/{id|name}/range({address})/format/borders
GET /workbook/names/{name}/range/format/borders
```

## Optional query parameters
You can use the [OData query parameters](odata-optional-query-parameters.md) to restrict the shape of the objects returned from this call.
## Request body
Do not supply a request body for this method.
## Response
If successful, this method returns a `200 OK` response code and collection of [RangeBorder](../resources/rangeborder.md) objects in the response body.
## Example
### HTTP request
### Response
