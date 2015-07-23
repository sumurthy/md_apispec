# NamedItem: Range

Returns the range object that is associated with the name. Throws an exception if the named item's type is not a range.
## HTTP request
```http
GET /workbook/names/{name}/getRange
```
## Optional query parameters
You can use the [OData query parameters](odata-optional-query-parameters.md) to restrict the shape of the objects returned from this call.

## Request body
Do not supply a request body for this method.


## Response
If successful, this method returns a `200 OK` response code and [Range](../resources/range.md) object in the response body.
## Example
### HTTP request
### Response
