# Session: Delete

Deletes the session token sent along with the api request.
## HTTP request
```http
DELETE /workbook/session
```
## Request headers
| Name       | Type | Description|
|:-----------|:------|:----------|
| X-Session-Token   | string  | Provide the session token to be deleted in the request header.|

## Request body
Do not supply a request body for this method.

## Response
If successful, this method returns a `204 No Content` response code. It does not return anything in the response body.
## Example

### HTTP request
```http
DELETE /workbook/session
X-Session-Token: "SampleSessionTokenValue"
```
### Response
```http
HTTP/1.1 204 No Content
```