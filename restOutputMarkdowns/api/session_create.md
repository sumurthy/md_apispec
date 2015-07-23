# Session: Create

Create a new Excel workbook session token.
## HTTP request
```http
POST /workbook/session
```
## Request body
Do not supply a request body for this method.


## Response
If successful, this method returns a `201 Created` response code and [Session](../resources/session.md) object in the response body.
## Example

### HTTP request
```http
POST /workbook/session
```
### Response
```http
HTTP/1.1 201 Created
Content-type: application/json

{
  "sessionToken": "SampleSessionTokenValue"
}
```