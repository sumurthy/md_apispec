# Get Table

Retrieve the properties and relationships of table object.
## HTTP request
```http
GET /workbook/bindings/{id}/table
GET /workbook/tables/{id|name}
GET /workbook/worksheets/{id|name}/tables/{id|name}
```

## Optional query parameters
You can use the [OData query parameters](odata-optional-query-parameters.md) to restrict the shape of the objects returned from this call.
## Request body
Do not supply a request body for this method.
## Response
If successful, this method returns a `200 OK` response code and [Table](../resources/table.md) object in the response body.
## Example
### HTTP request
### Response
