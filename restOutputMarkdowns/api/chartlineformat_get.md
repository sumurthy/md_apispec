# Get ChartLineFormat

Retrieve the properties and relationships of chartlineformat object.
## HTTP request
```http
GET /workbook/worksheets/{id|name}/charts/{name}/series/{undefined}/format/line
GET /workbook/worksheets/{id|name}/charts/{name}/axes/valueaxis/minorgridlines/format/line
GET /workbook/worksheets/{id|name}/charts/{name}/axes/seriesaxis/minorgridlines/format/line
GET /workbook/worksheets/{id|name}/charts/{name}/axes/categoryaxis/minorgridlines/format/line
GET /workbook/worksheets/{id|name}/charts/{name}/axes/valueaxis/majorgridlines/format/line
GET /workbook/worksheets/{id|name}/charts/{name}/axes/seriesaxis/majorgridlines/format/line
GET /workbook/worksheets/{id|name}/charts/{name}/axes/categoryaxis/majorgridlines/format/line
GET /workbook/worksheets/{id|name}/charts/{name}/axes/valueaxis/format/line
GET /workbook/worksheets/{id|name}/charts/{name}/axes/seriesaxis/format/line
GET /workbook/worksheets/{id|name}/charts/{name}/axes/categoryaxis/format/line
```

## Optional query parameters
You can use the [OData query parameters](odata-optional-query-parameters.md) to restrict the shape of the objects returned from this call.
## Request body
Do not supply a request body for this method.
## Response
If successful, this method returns a `200 OK` response code and [ChartLineFormat](../resources/chartlineformat.md) object in the response body.
## Example
### HTTP request
### Response
