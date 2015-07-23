# Chart: SetData

Resets the source data for the chart.
## HTTP request
```http
POST /workbook/worksheets/{id|name}/charts/{name}/setData
```
## Optional request headers
| Name       | Type | Description|
|:-----------|:------|:----------|
| x-session-token   | string  | The edit session token required to join the edit session maintained by Excel server. Refer to session management API for details.|

## Request body
In the request body, provide a JSON object that with the following parameters.

| Parameter	   | Type	|Description|
|:---------------|:--------|:-----------|
|sourceData|string|The address or name of the range that contains the source data. If an address or a worksheet-scoped name is used, it must include the worksheet name (e.g. "Sheet1!A5:B9"). |
|seriesBy|string|Optional. Specifies the way columns or rows are used as data series on the chart. Can be one of the following: Auto (default), Rows, Columns.  Possible values are: Auto, Columns, Rows|

## Response
If successful, this method returns a `200 OK` response code. It does not return anything in the response body.
## Example
### HTTP request
### Response
