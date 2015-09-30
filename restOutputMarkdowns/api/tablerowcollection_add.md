# TableRowCollection: Add

Adds a new row to the table.
## HTTP request
```http
POST /workbook/bindings/{id}/table/rows
POST /workbook/tables/{id|name}/rows
POST /workbook/worksheets/{id|name}/tables/{id|name}/rows
```
## Request headers
| Name       | Type | Description|
|:-----------|:------|:----------|
| X-Session-Id   | string  | The Excel workbook session id required to join the session managed by the server. If the session token has expired or is invalid, an error is returned.|

## Request body
In the request body, provide a JSON object that with the following parameters.

| Parameter	   | Type	|Description|
|:---------------|:--------|:-----------|
|index|number|Optional. Specifies the relative position of the new row. If null, the addition happens at the end. Any rows below the inserted row are shifted downwards. Zero-indexed.|
|values|(boolean or string or number)[][]|Optional. A 2-dimensional array of unformatted values of the table row.|

## Response
If successful, this method returns a `201 Created` response code and [TableRow](../resources/tablerow.md) object in the response body.
## Example
### HTTP request
### Response
