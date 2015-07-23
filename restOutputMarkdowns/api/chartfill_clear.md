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
