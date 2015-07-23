# Update Table

Update the properties of table object.
## HTTP request
```http
PATCH /workbook/bindings/{id}/table
PATCH /workbook/tables/{id|name}
PATCH /workbook/worksheets/{id|name}/tables/{id|name}
```

## Optional request headers
| Name       | Type | Description|
|:-----------|:------|:----------|
| X-Session-Token   | string  | The Excel workbook session token required to join the session managed by the server. If the session token has expired or is invalid, an error is returned.|

## Request body
In the request body, supply the values for relevant fields that should be updated. Existing properties that are not included in the request body will maintain their previous values or be recalculated based on changes to other property values. For best performance you shouldn't include existing values that haven't changed.

| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|name|string|Name of the table.|
|showHeaders|bool|Indicates whether the header row is visible or not. This value can be set to show or remove the header row.|
|showTotals|bool|Indicates whether the total row is visible or not. This value can be set to show or remove the total row.|
|style|string|Constant value that represents the Table style. Possible values are: TableStyleLight1 thru TableStyleLight21, TableStyleMedium1 thru TableStyleMedium28, TableStyleStyleDark1 thru TableStyleStyleDark11. A custom user-defined style present in the workbook can also be specified.|

## Response
If successful, this method returns a `200 OK` response code and updated [Table](../resources/table.md) object in the response body.
## Example
### HTTP request
### Response
