# Update ChartLineFormat

Update the properties of chartlineformat object.
## HTTP request
```http
PATCH /workbook/worksheets/{id|name}/charts/{name}/series/{undefined}/format/line
PATCH /workbook/worksheets/{id|name}/charts/{name}/axes/valueaxis/minorgridlines/format/line
PATCH /workbook/worksheets/{id|name}/charts/{name}/axes/seriesaxis/minorgridlines/format/line
PATCH /workbook/worksheets/{id|name}/charts/{name}/axes/categoryaxis/minorgridlines/format/line
PATCH /workbook/worksheets/{id|name}/charts/{name}/axes/valueaxis/majorgridlines/format/line
PATCH /workbook/worksheets/{id|name}/charts/{name}/axes/seriesaxis/majorgridlines/format/line
PATCH /workbook/worksheets/{id|name}/charts/{name}/axes/categoryaxis/majorgridlines/format/line
PATCH /workbook/worksheets/{id|name}/charts/{name}/axes/valueaxis/format/line
PATCH /workbook/worksheets/{id|name}/charts/{name}/axes/seriesaxis/format/line
PATCH /workbook/worksheets/{id|name}/charts/{name}/axes/categoryaxis/format/line
```

## Optional request headers
| Name       | Type | Description|
|:-----------|:------|:----------|
| x-session-token   | string  | The edit session token required to join the edit session maintained by Excel server. Refer to session management API for details.|

## Request body
In the request body, supply the values for relevant fields that should be updated. Existing properties that are not included in the request body will maintain their previous values or be recalculated based on changes to other property values. For best performance you shouldn't include existing values that haven't changed.

| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|color|string|HTML color code representing the color of lines in the chart.|

## Response
If successful, this method returns a `200 OK` response code and updated [ChartLineFormat](../resources/chartlineformat.md) object in the response body.
## Example
### HTTP request
### Response
