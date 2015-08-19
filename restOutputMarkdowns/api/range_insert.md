# Range: Insert

Inserts a cell or a range of cells into the worksheet in place of this range, and shifts the other cells to make space. Returns a new Range object at the now blank space.
## HTTP request
```http
POST /workbook/bindings/{id}/table/range/insert
POST /workbook/tables/{id|name}/range/insert
POST /workbook/worksheets/{id|name}/tables/{id|name}/range/insert
POST /workbook/bindings/{id}/table/rows/{index}/range/insert
POST /workbook/tables/{id|name}/rows/{index}/range/insert
POST /workbook/worksheets/{id|name}/tables/{id|name}/rows/{index}/range/insert
POST /workbook/bindings/{id}/table/columns/{id|name}/range/insert
POST /workbook/tables/{id|name}/columns/{id|name}/range/insert
POST /workbook/worksheets/{id|name}/tables/{id|name}/columns/{id|name}/range/insert
POST /workbook/bindings/{id}/range/insert
POST /workbook/worksheets/{id|name}/range({address})/insert
POST /workbook/names/{name}/range/insert
```
## Request headers
| Name       | Type | Description|
|:-----------|:------|:----------|
| X-Session-Id   | string  | The Excel workbook session id required to join the session managed by the server. If the session token has expired or is invalid, an error is returned.|

## Request body
In the request body, provide a JSON object that with the following parameters.

| Parameter	   | Type	|Description|
|:---------------|:--------|:-----------|
|shift|string|Specifies which way to shift the cells.  Possible values are: Down, Right|

## Response
If successful, this method returns a `200 OK` response code and [Range](../resources/range.md) object in the response body.
## Example
### HTTP request
### Response
