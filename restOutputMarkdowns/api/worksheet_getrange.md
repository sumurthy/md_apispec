# Worksheet: Range

Gets the range object specified by the address or name.
## HTTP request
```http
GET /workbook/worksheets/{id|name}/getRange
```
## Optional query parameters
You can use the [OData query parameters](odata-optional-query-parameters.md) to restrict the shape of the objects returned from this call.

## Request body
In the request body, provide a JSON object that with the following parameters.

| Parameter	   | Type	|Description|
|:---------------|:--------|:-----------|
|address|string|Optional. The address or the name of the range. If not specified, the entire worksheet range is returned.|

## Response
If successful, this method returns a `200 OK` response code and [Range](../resources/range.md) object in the response body.
## Example
### HTTP request
### Response
