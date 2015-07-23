# Get RangeBorder

Retrieve the properties and relationships of rangeborder object.
## HTTP request
```http
GET /workbook/bindings/{id}/table/range/format/borders/{sideIndex}
GET /workbook/tables/{id|name}/range/format/borders/{sideIndex}
GET /workbook/worksheets/{id|name}/tables/{id|name}/range/format/borders/{sideIndex}
GET /workbook/bindings/{id}/table/rows/{index}/range/format/borders/{sideIndex}
GET /workbook/tables/{id|name}/rows/{index}/range/format/borders/{sideIndex}
GET /workbook/worksheets/{id|name}/tables/{id|name}/rows/{index}/range/format/borders/{sideIndex}
GET /workbook/bindings/{id}/table/columns/{id|name}/range/format/borders/{sideIndex}
GET /workbook/tables/{id|name}/columns/{id|name}/range/format/borders/{sideIndex}
GET /workbook/worksheets/{id|name}/tables/{id|name}/columns/{id|name}/range/format/borders/{sideIndex}
GET /workbook/bindings/{id}/range/format/borders/{sideIndex}
GET /workbook/worksheets/{id|name}/range({address})/format/borders/{sideIndex}
GET /workbook/names/{name}/range/format/borders/{sideIndex}
```

## Optional query parameters
You can use the [OData query parameters](odata-optional-query-parameters.md) to restrict the shape of the objects returned from this call.
## Request body
Do not supply a request body for this method.
## Response
If successful, this method returns a `200 OK` response code and [RangeBorder](../resources/rangeborder.md) object in the response body.
## Example
### HTTP request
### Response
