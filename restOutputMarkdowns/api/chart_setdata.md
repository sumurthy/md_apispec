# Chart: SetData

Resets the source data for the chart.
## HTTP request
```http
POST /workbook/worksheets/{id|name}/charts/{name}/setData
```
## Request headers
| Name       | Type | Description|
|:-----------|:------|:----------|
| X-Session-Id   | string  | The Excel workbook session id required to join the session managed by the server. If the session token has expired or is invalid, an error is returned.|

## Request body
In the request body, provide a JSON object that with the following parameters.

| Parameter	   | Type	|Description|
|:---------------|:--------|:-----------|
|sourceData|Range or string|The address or name of the range that contains the source data. If an address or a worksheet-scoped name is used, it must include the worksheet name (e.g. "Sheet1!A5:B9"). |
|seriesBy|string|Optional. Specifies the way columns or rows are used as data series on the chart. Can be one of the following: Auto (default), Rows, Columns.  Possible values are: Auto, Columns, Rows|

## Response
If successful, this method returns a `200 OK` response code. It does not return anything in the response body.
## Example
### HTTP request
### Response
