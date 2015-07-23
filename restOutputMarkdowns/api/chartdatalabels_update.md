# Update ChartDataLabels

Update the properties of chartdatalabels object.
## HTTP request
```http
PATCH /workbook/worksheets/{id|name}/charts/{name}/datalabels
```

## Optional request headers
| Name       | Type | Description|
|:-----------|:------|:----------|
| x-session-token   | string  | The edit session token required to join the edit session maintained by Excel server. Refer to session management API for details.|

## Request body
In the request body, supply the values for relevant fields that should be updated. Existing properties that are not included in the request body will maintain their previous values or be recalculated based on changes to other property values. For best performance you shouldn't include existing values that haven't changed.

| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|position|string|DataLabelPosition value that represents the position of the data label. Possible values are: `None`, `Center`, `InsideEnd`, `InsideBase`, `OutsideEnd`, `Left`, `Right`, `Top`, `Bottom`, `BestFit`, `Callout`.|
|separator|string|String representing the separator used for the data labels on a chart.|
|showBubbleSize|bool|Boolean value representing if the data label bubble size is visible or not.|
|showCategoryName|bool|Boolean value representing if the data label category name is visible or not.|
|showLegendKey|bool|Boolean value representing if the data label legend key is visible or not.|
|showPercentage|bool|Boolean value representing if the data label percentage is visible or not.|
|showSeriesName|bool|Boolean value representing if the data label series name is visible or not.|
|showValue|bool|Boolean value representing if the data label value is visible or not.|

## Response
If successful, this method returns a `200 OK` response code and updated [ChartDataLabels](../resources/chartdatalabels.md) object in the response body.
## Example
### HTTP request
### Response
