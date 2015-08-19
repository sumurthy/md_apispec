# Range: OffsetRange

Gets an object which represents a range that's offset from the specified range. The dimension of the returned range will match this range. If the resulting range is forced outside the bounds of the worksheet grid, an exception will be thrown.
## HTTP request
```http
GET /workbook/bindings/{id}/table/range/getOffsetRange
GET /workbook/tables/{id|name}/range/getOffsetRange
GET /workbook/worksheets/{id|name}/tables/{id|name}/range/getOffsetRange
GET /workbook/bindings/{id}/table/rows/{index}/range/getOffsetRange
GET /workbook/tables/{id|name}/rows/{index}/range/getOffsetRange
GET /workbook/worksheets/{id|name}/tables/{id|name}/rows/{index}/range/getOffsetRange
GET /workbook/bindings/{id}/table/columns/{id|name}/range/getOffsetRange
GET /workbook/tables/{id|name}/columns/{id|name}/range/getOffsetRange
GET /workbook/worksheets/{id|name}/tables/{id|name}/columns/{id|name}/range/getOffsetRange
GET /workbook/bindings/{id}/range/getOffsetRange
GET /workbook/worksheets/{id|name}/range({address})/getOffsetRange
GET /workbook/names/{name}/range/getOffsetRange
```
## Optional query parameters
You can use the [OData query parameters](odata-optional-query-parameters.md) to restrict the shape of the objects returned from this call.
## Request headers
| Name       | Type | Description|
|:-----------|:------|:----------|
| X-Session-Id   | string  | The Excel workbook session id required to join the session managed by the server. If the session token has expired or is invalid, an error is returned.|

## Request body
In the request body, provide a JSON object that with the following parameters.

| Parameter	   | Type	|Description|
|:---------------|:--------|:-----------|
|rowOffset|number|The number of rows (positive, negative, or 0) by which the range is to be offset. Positive values are offset downward, and negative values are offset upward.|
|columnOffset|number|The number of columns (positive, negative, or 0) by which the range is to be offset. Positive values are offset to the right, and negative values are offset to the left.|

## Response
If successful, this method returns a `200 OK` response code and [Range](../resources/range.md) object in the response body.
## Example
### HTTP request
### Response
