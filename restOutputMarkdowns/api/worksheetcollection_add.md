# WorksheetCollection: Add

Adds a new worksheet to the workbook. The worksheet will be added at the end of existing worksheets. If you wish to activate the newly added worksheet, call ".activate() on it.
## HTTP request
```http
POST /workbook/worksheets/add
```
## Request headers
| Name       | Type | Description|
|:-----------|:------|:----------|
| X-Session-Token   | string  | The Excel workbook session token required to join the session managed by the server. If the session token has expired or is invalid, an error is returned.|

## Request body
In the request body, provide a JSON object that with the following parameters.

| Parameter	   | Type	|Description|
|:---------------|:--------|:-----------|
|name|string|Optional. The name of the worksheet to be added. If specified, name should be unqiue. If not specified, Excel determines the name of the new worksheet.|

## Response
If successful, this method returns a `201 Created` response code and [Worksheet](../resources/worksheet.md) object in the response body.
## Example
### HTTP request
### Response
