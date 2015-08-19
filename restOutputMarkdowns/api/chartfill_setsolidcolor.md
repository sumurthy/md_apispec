# ChartFill: SetSolidColor

Sets the fill formatting of a chart element to a uniform color.
## HTTP request
```http
POST /workbook/worksheets/{id|name}/charts/{name}/format/fill/setSolidColor
POST /workbook/worksheets/{id|name}/charts/{name}/title/format/fill/setSolidColor
POST /workbook/worksheets/{id|name}/charts/{name}/series/{undefined}/points/{undefined}/format/fill/setSolidColor
POST /workbook/worksheets/{id|name}/charts/{name}/series/{undefined}/format/fill/setSolidColor
POST /workbook/worksheets/{id|name}/charts/{name}/legend/format/fill/setSolidColor
POST /workbook/worksheets/{id|name}/charts/{name}/datalabels/format/fill/setSolidColor
```
## Request headers
| Name       | Type | Description|
|:-----------|:------|:----------|
| X-Session-Id   | string  | The Excel workbook session id required to join the session managed by the server. If the session token has expired or is invalid, an error is returned.|

## Request body
In the request body, provide a JSON object that with the following parameters.

| Parameter	   | Type	|Description|
|:---------------|:--------|:-----------|
|color|string|HTML color code representing the color of the border line, of the form #RRGGBB (e.g. "FFA500") or as a named HTML color (e.g. "orange").|

## Response
If successful, this method returns a `200 OK` response code. It does not return anything in the response body.
## Example
### HTTP request
### Response
