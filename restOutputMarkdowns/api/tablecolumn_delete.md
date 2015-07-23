# TableColumn: Delete

Deletes the column from the table.
## HTTP request
```http
DELETE /workbook/bindings/{id}/table/columns/{id|name}/delete
DELETE /workbook/tables/{id|name}/columns/{id|name}/delete
DELETE /workbook/worksheets/{id|name}/tables/{id|name}/columns/{id|name}/delete
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
