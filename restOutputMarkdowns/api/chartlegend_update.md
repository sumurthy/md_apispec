# Update ChartLegend

Update the properties of chartlegend object.
## HTTP request
```http
PATCH /workbook/worksheets/{id|name}/charts/{name}/legend
```

## Optional request headers
| Name       | Type | Description|
|:-----------|:------|:----------|
| X-Session-Token   | string  | The Excel workbook session token required to join the session managed by the server. If the session token has expired or is invalid, an error is returned.|

## Request body
In the request body, supply the values for relevant fields that should be updated. Existing properties that are not included in the request body will maintain their previous values or be recalculated based on changes to other property values. For best performance you shouldn't include existing values that haven't changed.

| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|overlay|bool|Boolean value for whether the chart legend should overlap with the main body of the chart.|
|position|string|Represents the position of the legend on the chart. Possible values are: `Top`, `Bottom`, `Left`, `Right`, `Corner`, `Custom`.|
|visible|bool|A boolean value the represents the visibility of a ChartLegend object.|

## Response
If successful, this method returns a `200 OK` response code and updated [ChartLegend](../resources/chartlegend.md) object in the response body.
## Example
### HTTP request
### Response
