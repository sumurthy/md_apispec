# Range: Delete

Deletes the cells associated with the range.
## HTTP request
```http
POST /workbook/bindings/{id}/table/range/delete
POST /workbook/tables/{id|name}/range/delete
POST /workbook/worksheets/{id|name}/tables/{id|name}/range/delete
POST /workbook/bindings/{id}/table/rows/{index}/range/delete
POST /workbook/tables/{id|name}/rows/{index}/range/delete
POST /workbook/worksheets/{id|name}/tables/{id|name}/rows/{index}/range/delete
POST /workbook/bindings/{id}/table/columns/{id|name}/range/delete
POST /workbook/tables/{id|name}/columns/{id|name}/range/delete
POST /workbook/worksheets/{id|name}/tables/{id|name}/columns/{id|name}/range/delete
POST /workbook/bindings/{id}/range/delete
POST /workbook/worksheets/{id|name}/range({address})/delete
POST /workbook/names/{name}/range/delete
```
## Request headers
| Name       | Type | Description|
|:-----------|:------|:----------|
| X-Session-Id   | string  | The Excel workbook session id required to join the session managed by the server. If the session token has expired or is invalid, an error is returned.|

## Request body
In the request body, provide a JSON object that with the following parameters.

| Parameter	   | Type	|Description|
|:---------------|:--------|:-----------|
|shift|string|Specifies which way to shift the cells.  Possible values are: Up, Left|

## Response
If successful, this method returns a `204 No Content` response code. It does not return anything in the response body.
## Example
### HTTP request
### Response
