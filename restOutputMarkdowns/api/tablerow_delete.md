# TableRow: Delete

Deletes the row from the table.
## HTTP request
```http
DELETE /workbook/bindings/{id}/table/rows/{index}/delete
DELETE /workbook/tables/{id|name}/rows/{index}/delete
DELETE /workbook/worksheets/{id|name}/tables/{id|name}/rows/{index}/delete
```
## Optional request headers
| Name       | Type | Description|
|:-----------|:------|:----------|
| x-session-token   | string  | The edit session token required to join the edit session maintained by Excel server. Refer to session management API for details.|

## Request body
Do not supply a request body for this method.


## Response
If successful, this method returns a `204 No Content` response code. It does not return anything in the response body.
## Example
### HTTP request
### Response
