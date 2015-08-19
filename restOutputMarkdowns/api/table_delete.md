# Table: Delete

Deletes the table.
## HTTP request
```http
DELETE /workbook/bindings/{id}/table
DELETE /workbook/tables/{id|name}
DELETE /workbook/worksheets/{id|name}/tables/{id|name}
```
## Request headers
| Name       | Type | Description|
|:-----------|:------|:----------|
| X-Session-Id   | string  | The Excel workbook session id required to join the session managed by the server. If the session token has expired or is invalid, an error is returned.|

## Request body
Do not supply a request body for this method.


## Response
If successful, this method returns a `204 No Content` response code. It does not return anything in the response body.
## Example
### HTTP request
### Response
