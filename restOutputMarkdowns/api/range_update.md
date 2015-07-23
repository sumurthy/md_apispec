# Update Range

Update the properties of range object.
## HTTP request
```http
PATCH /workbook/bindings/{id}/table/range
PATCH /workbook/tables/{id|name}/range
PATCH /workbook/worksheets/{id|name}/tables/{id|name}/range
PATCH /workbook/bindings/{id}/table/rows/{index}/range
PATCH /workbook/tables/{id|name}/rows/{index}/range
PATCH /workbook/worksheets/{id|name}/tables/{id|name}/rows/{index}/range
PATCH /workbook/bindings/{id}/table/columns/{id|name}/range
PATCH /workbook/tables/{id|name}/columns/{id|name}/range
PATCH /workbook/worksheets/{id|name}/tables/{id|name}/columns/{id|name}/range
PATCH /workbook/bindings/{id}/range
PATCH /workbook/worksheets/{id|name}/range({address})
PATCH /workbook/names/{name}/range
```

## Optional request headers
| Name       | Type | Description|
|:-----------|:------|:----------|
| X-Session-Token   | string  | The Excel workbook session token required to join the session managed by the server. If the session token has expired or is invalid, an error is returned.|

## Request body
In the request body, supply the values for relevant fields that should be updated. Existing properties that are not included in the request body will maintain their previous values or be recalculated based on changes to other property values. For best performance you shouldn't include existing values that haven't changed.

| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|formulas|object[][]|Represents the formula in A1-style notation.|
|formulasLocal|object[][]|Represents the formula in A1-style notation, in the user's language and number-formatting locale.  For example, the English "=SUM(A1, 1.5)" formula would become "=SUMME(A1; 1,5)" in German.|
|numberFormat|object[][]|Represents Excel's number format code for the given cell.|
|values|object[][]|Represents the raw values of the specified range. The data returned could be of type string, number, or a boolean. Cell that contain an error will return the error string.|

## Response
If successful, this method returns a `200 OK` response code and updated [Range](../resources/range.md) object in the response body.
## Example
### HTTP request
### Response
