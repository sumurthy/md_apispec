# Application: Calculate

Recalculate all currently opened workbooks in Excel.
## HTTP request
```http
POST /workbook/application/calculate
```
## Optional request headers
| Name       | Type | Description|
|:-----------|:------|:----------|
| x-session-token   | string  | The edit session token required to join the edit session maintained by Excel server. Refer to session management API for details.|

## Request body
In the request body, provide a JSON object that with the following parameters.

| Parameter	   | Type	|Description|
|:---------------|:--------|:-----------|
|calculationType|string|Specifies the calculation type to use. Possible values are: `Recalculate` Default-option. Performs normal calculation by calculating all the formulas in the workbook.,`Full` Forces a full calculation of the data.,`FullRebuild`  Forces a full calculation of the data and rebuilds the dependencies.|

## Response
If successful, this method returns a `200 OK` response code. It does not return anything in the response body.
## Example
### HTTP request
### Response
