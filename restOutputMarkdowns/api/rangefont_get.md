# Get RangeFont

Retrieve the properties and relationships of rangefont object.
## HTTP request
```http
GET /workbook/bindings/{id}/table/range/format/font
GET /workbook/tables/{id|name}/range/format/font
GET /workbook/worksheets/{id|name}/tables/{id|name}/range/format/font
GET /workbook/bindings/{id}/table/rows/{index}/range/format/font
GET /workbook/tables/{id|name}/rows/{index}/range/format/font
GET /workbook/worksheets/{id|name}/tables/{id|name}/rows/{index}/range/format/font
GET /workbook/bindings/{id}/table/columns/{id|name}/range/format/font
GET /workbook/tables/{id|name}/columns/{id|name}/range/format/font
GET /workbook/worksheets/{id|name}/tables/{id|name}/columns/{id|name}/range/format/font
GET /workbook/bindings/{id}/range/format/font
GET /workbook/worksheets/{id|name}/range({address})/format/font
GET /workbook/names/{name}/range/format/font
```

## Optional query parameters
You can use the [OData query parameters](odata-optional-query-parameters.md) to restrict the shape of the objects returned from this call.
## Request body
Do not supply a request body for this method.
## Response
If successful, this method returns a `200 OK` response code and [RangeFont](../resources/rangefont.md) object in the response body.
## Example
### HTTP request
### Response
