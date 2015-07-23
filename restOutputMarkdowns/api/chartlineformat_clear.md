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
## Optional request headers
| Name       | Type | Description|
|:-----------|:------|:----------|
| x-session-token   | string  | The edit session token required to join the edit session maintained by Excel server. Refer to session management API for details.|

## Request body
Do not supply a request body for this method.


## Response
If successful, this method returns a `200 OK` response code. It does not return anything in the response body.
## Example
### HTTP request
### Response
