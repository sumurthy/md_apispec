# TableColumnCollection: Add

Adds a new column to the table.
## HTTP request
```http
POST /workbook/bindings/{id}/table/columns/add
POST /workbook/tables/{id|name}/columns/add
POST /workbook/worksheets/{id|name}/tables/{id|name}/columns/add
```
## Optional request headers
| Name       | Type | Description|
|:-----------|:------|:----------|
| x-session-token   | string  | The edit session token required to join the edit session maintained by Excel server. Refer to session management API for details.|

## Request body
In the request body, provide a JSON object that with the following parameters.

| Parameter	   | Type	|Description|
|:---------------|:--------|:-----------|
|index|number|Specifies the relative position of the new column. The previous column at this position is shifted to the right. The index value should be equal to or less than the last column's index value, so it cannot be used to append a column at the end of the table. Zero-indexed.|
|values|object[][]|Optional. A 2-dimensional array of unformatted values of the table column.|

## Response
If successful, this method returns a `201 Created` response code and [TableColumn](../resources/tablecolumn.md) object in the response body.
## Example
### HTTP request
### Response
