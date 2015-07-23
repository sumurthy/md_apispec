# Range: Clear

Clear range values, format, fill, border, etc.
## HTTP request
```http
POST /workbook/bindings/{id}/table/range/clear
POST /workbook/tables/{id|name}/range/clear
POST /workbook/worksheets/{id|name}/tables/{id|name}/range/clear
POST /workbook/bindings/{id}/table/rows/{index}/range/clear
POST /workbook/tables/{id|name}/rows/{index}/range/clear
POST /workbook/worksheets/{id|name}/tables/{id|name}/rows/{index}/range/clear
POST /workbook/bindings/{id}/table/columns/{id|name}/range/clear
POST /workbook/tables/{id|name}/columns/{id|name}/range/clear
POST /workbook/worksheets/{id|name}/tables/{id|name}/columns/{id|name}/range/clear
POST /workbook/bindings/{id}/range/clear
POST /workbook/worksheets/{id|name}/range({address})/clear
POST /workbook/names/{name}/range/clear
```
## Optional request headers
| Name       | Type | Description|
|:-----------|:------|:----------|
| x-session-token   | string  | The edit session token required to join the edit session maintained by Excel server. Refer to session management API for details.|

## Request body
In the request body, provide a JSON object that with the following parameters.

| Parameter	   | Type	|Description|
|:---------------|:--------|:-----------|
|applyTo|string|Optional. Determines the type of clear action. Possible values are: `All` Default-option,`Formats` ,`Contents` |

## Response
If successful, this method returns a `200 OK` response code. It does not return anything in the response body.
## Example
### HTTP request
### Response
