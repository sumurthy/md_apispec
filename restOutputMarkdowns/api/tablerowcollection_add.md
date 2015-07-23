# TableRowCollection: Add

Adds a new row to the table.
## HTTP request
```http
POST /workbook/bindings/{id}/table/rows/add
POST /workbook/tables/{id|name}/rows/add
POST /workbook/worksheets/{id|name}/tables/{id|name}/rows/add
```
## Optional request headers
| Name       | Type | Description|
|:-----------|:------|:----------|
| x-session-token   | string  | The edit session token required to join the edit session maintained by Excel server. Refer to session management API for details.|

## Request body
In the request body, provide a JSON object that with the following parameters.

| Parameter	   | Type	|Description|
|:---------------|:--------|:-----------|
|index|number|Optional. Specifies the relative position of the new row. If null, the addition happens at the end. Any rows below the inserted row are shifted downwards. Zero-indexed.|
|values|object[][]|Optional. A 2-dimensional array of unformatted values of the table row.|

## Response
If successful, this method returns a `201 Created` response code and [TableRow](../resources/tablerow.md) object in the response body.
## Example
### HTTP request
### Response
