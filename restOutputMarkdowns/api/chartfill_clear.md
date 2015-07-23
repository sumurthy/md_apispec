# ChartFill: Clear

Clear the fill color of a chart element.
## HTTP request
```http
POST /workbook/worksheets/{id|name}/charts/{name}/format/fill/clear
POST /workbook/worksheets/{id|name}/charts/{name}/title/format/fill/clear
POST /workbook/worksheets/{id|name}/charts/{name}/series/{undefined}/points/{undefined}/format/fill/clear
POST /workbook/worksheets/{id|name}/charts/{name}/series/{undefined}/format/fill/clear
POST /workbook/worksheets/{id|name}/charts/{name}/legend/format/fill/clear
POST /workbook/worksheets/{id|name}/charts/{name}/datalabels/format/fill/clear
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
