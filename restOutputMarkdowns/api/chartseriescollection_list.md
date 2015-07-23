# List ChartSeries

Retrieve a list of chartseries objects.
## HTTP request
```http
GET /workbook/worksheets/{id|name}/charts/{name}/series
```

## Optional query parameters
You can use the [OData query parameters](odata-optional-query-parameters.md) to restrict the shape of the objects returned from this call.
## Request body
Do not supply a request body for this method.
## Response
If successful, this method returns a `200 OK` response code and collection of [ChartSeries](../resources/chartseries.md) objects in the response body.
## Example
### HTTP request
### Response