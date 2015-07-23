# Update Worksheet

Update the properties of worksheet object.
## HTTP request
```http
PATCH /workbook/worksheets/{id|name}
```

## Optional request headers
| Name       | Type | Description|
|:-----------|:------|:----------|
| X-Session-Token   | string  | The Excel workbook session token required to join the session managed by the server. If the session token has expired or is invalid, an error is returned.|

## Request body
In the request body, supply the values for relevant fields that should be updated. Existing properties that are not included in the request body will maintain their previous values or be recalculated based on changes to other property values. For best performance you shouldn't include existing values that haven't changed.

| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|name|string|The display name of the worksheet.|
|position|int|The zero-based position of the worksheet within the workbook.|

## Response
If successful, this method returns a `200 OK` response code and updated [Worksheet](../resources/worksheet.md) object in the response body.
## Example
### HTTP request
### Response
