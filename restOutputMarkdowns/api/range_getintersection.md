# Range: Intersection

Gets the range object that represents the rectangular intersection of the given ranges.
## HTTP request
```http
GET /workbook/bindings/{id}/table/range/getIntersection
GET /workbook/tables/{id|name}/range/getIntersection
GET /workbook/worksheets/{id|name}/tables/{id|name}/range/getIntersection
GET /workbook/bindings/{id}/table/rows/{index}/range/getIntersection
GET /workbook/tables/{id|name}/rows/{index}/range/getIntersection
GET /workbook/worksheets/{id|name}/tables/{id|name}/rows/{index}/range/getIntersection
GET /workbook/bindings/{id}/table/columns/{id|name}/range/getIntersection
GET /workbook/tables/{id|name}/columns/{id|name}/range/getIntersection
GET /workbook/worksheets/{id|name}/tables/{id|name}/columns/{id|name}/range/getIntersection
GET /workbook/bindings/{id}/range/getIntersection
GET /workbook/worksheets/{id|name}/range({address})/getIntersection
GET /workbook/names/{name}/range/getIntersection
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
|anotherRange|object|The range object or range address that will be used to determine the intersection of ranges.|

## Response
If successful, this method returns a `200 OK` response code and [Range](../resources/range.md) object in the response body.
## Example
### HTTP request
### Response
