# ChartCollection: Add

Creates a new chart.
## HTTP request
```http
POST /workbook/worksheets/{id|name}/charts
```
## Request headers
| Name       | Type | Description|
|:-----------|:------|:----------|
| X-Session-Id   | string  | The Excel workbook session id required to join the session managed by the server. If the session token has expired or is invalid, an error is returned.|

## Request body
In the request body, provide a JSON object that with the following parameters.

| Parameter	   | Type	|Description|
|:---------------|:--------|:-----------|
|type|string|Represents the type of a chart.  Possible values are: ColumnClustered, ColumnStacked, ColumnStacked100, BarClustered, BarStacked, BarStacked100, LineStacked, LineStacked100, LineMarkers, LineMarkersStacked, LineMarkersStacked100, PieOfPie, etc.|
|sourceData|Range|The range object that contains the source data.|
|seriesBy|string|Optional. Specifies the way columns or rows are used as data series on the chart.  Possible values are: Auto, Columns, Rows|

## Response
If successful, this method returns a `201 Created` response code and [Chart](../resources/chart.md) object in the response body.
## Example
### HTTP request
### Response
