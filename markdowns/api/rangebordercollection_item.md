# RangeBorderCollection: Item

Gets a border object using its name
### Prerequisites
The following **scopes** are required to execute this API: 
### HTTP request
<!-- { "blockType": "ignored" } -->
```http
POST /workbook/names/<name>/range/format/borders/Item
POST /workbook/bindings/<id>/range/format/borders/Item
POST /workbook/tables/<id|name>/range/format/borders/Item

```
### Request headers
| Name       | Type | Description|
|:---------------|:--------|:----------|
| Authorization  |string | Oauth2 authorization code. Required.| 
| Workbook-Session-Id  |string |It is recommended to include the workbook session Id along with the request. Optional.|

### Request body
In the request body, provide a JSON object with the following parameters.

| Parameter	   | Type	|Description|
|:---------------|:--------|:----------|
|index|string|Index value of the border object to be retrieved.  Possible values are: EdgeTop`, `EdgeBottom`, `EdgeLeft`, `EdgeRight`, `InsideVertical`, `InsideHorizontal`, `DiagonalDown`, `DiagonalUp`.|

### Response
If successful, this method returns `, ` response code and [RangeBorder](../resources/rangeborder.md) object in the response body.

### Example
Here is an example of how to call this API.
##### Request
Here is an example of the request.
<!-- {
  "blockType": "request",
  "name": "rangebordercollection_item"
}-->
```http
POST https://graph.microsoft.com/beta/workbook/names/<name>/range/format/borders/Item
Content-type: application/json
Content-length: 28

{
  "index": "index-value"
}
```

##### Response
Here is an example of the response.
<!-- {
  "blockType": "response",
  "truncated": false,
  "@odata.type": "microsoft.graph.rangeborder"
} -->
```http
HTTP/1.1 200 OK
Content-type: application/json
Content-length: 116

{
  "color": "color-value",
  "style": "style-value",
  "sideIndex": "sideIndex-value",
  "weight": "weight-value"
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "RangeBorderCollection: Item",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->