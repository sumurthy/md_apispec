# ChartLineFormat: Clear

Clear the line format of a chart element.
## HTTP request
```http
POST /workbook/worksheets/{id|name}/charts/{name}/series/{undefined}/format/line/clear
POST /workbook/worksheets/{id|name}/charts/{name}/axes/valueaxis/minorgridlines/format/line/clear
POST /workbook/worksheets/{id|name}/charts/{name}/axes/seriesaxis/minorgridlines/format/line/clear
POST /workbook/worksheets/{id|name}/charts/{name}/axes/categoryaxis/minorgridlines/format/line/clear
POST /workbook/worksheets/{id|name}/charts/{name}/axes/valueaxis/majorgridlines/format/line/clear
POST /workbook/worksheets/{id|name}/charts/{name}/axes/seriesaxis/majorgridlines/format/line/clear
POST /workbook/worksheets/{id|name}/charts/{name}/axes/categoryaxis/majorgridlines/format/line/clear
POST /workbook/worksheets/{id|name}/charts/{name}/axes/valueaxis/format/line/clear
POST /workbook/worksheets/{id|name}/charts/{name}/axes/seriesaxis/format/line/clear
POST /workbook/worksheets/{id|name}/charts/{name}/axes/categoryaxis/format/line/clear
```
## Request headers
| Name       | Type | Description|
|:-----------|:------|:----------|
| X-Session-Token   | string  | The Excel workbook session token required to join the session managed by the server. If the session token has expired or is invalid, an error is returned.|

## Request body
Do not supply a request body for this method.


## Response
If successful, this method returns a `200 OK` response code. It does not return anything in the response body.
## Example
### HTTP request
### Response
