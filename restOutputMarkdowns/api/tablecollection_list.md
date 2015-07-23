# List Table

Retrieve a list of table objects.
## HTTP request
```http
GET /workbook/tables
GET /workbook/worksheets/{id|name}/tables
```

## Optional query parameters
You can use the [OData query parameters](odata-optional-query-parameters.md) to restrict the shape of the objects returned from this call.
## Request body
Do not supply a request body for this method.
## Response
If successful, this method returns a `200 OK` response code and collection of [Table](../resources/table.md) objects in the response body.
## Example
### HTTP request
### Response
