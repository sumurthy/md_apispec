# Application: Calculate

Recalculate all currently opened workbooks in Excel.
## HTTP request
```http
POST /workbook/application/calculate
```
## Request headers
| Name       | Type | Description|
|:-----------|:------|:----------|
| X-Session-Id   | string  | The Excel workbook session id required to join the session managed by the server. If the session token has expired or is invalid, an error is returned.|

## Request body
In the request body, provide a JSON object that with the following parameters.

| Parameter	   | Type	|Description|
|:---------------|:--------|:-----------|
|calculationType|string|Specifies the calculation type to use. Possible values are: `Recalculate` Default-option. Performs normal calculation by calculating all the formulas in the workbook,`Full` Forces a full calculation of the data,`FullRebuild`  Forces a full calculation of the data and rebuilds the dependencies.|

## Response
If successful, this method returns a `200 OK` response code. It does not return anything in the response body.
## Example
### HTTP request
### Response
