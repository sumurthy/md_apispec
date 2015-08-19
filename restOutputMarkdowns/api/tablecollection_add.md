# TableCollection: Add

Create a new table. The range source address determines the worksheet under which the table will be added. If the table cannot be added (e.g., because the address is invalid, or the table would overlap with another table), an error will be thrown.
## HTTP request
```http
POST /workbook/tables
POST /workbook/worksheets/{id|name}/tables
```
## Request headers
| Name       | Type | Description|
|:-----------|:------|:----------|
| X-Session-Id   | string  | The Excel workbook session id required to join the session managed by the server. If the session token has expired or is invalid, an error is returned.|

## Request body
In the request body, provide a JSON object that with the following parameters.

| Parameter	   | Type	|Description|
|:---------------|:--------|:-----------|
|address|string|Address or name of the range object representing the data source. If the address does not contain a sheet name, the currently-active sheet is used.|
|hasHeaders|bool|Boolean value that indicates whether the data being imported has column labels. If the source does not contain headers (i.e,. when this property set to false), Excel will automatically generate header shifting the data down by one row.|

## Response
If successful, this method returns a `201 Created` response code and [Table](../resources/table.md) object in the response body.
## Example
### HTTP request
### Response
