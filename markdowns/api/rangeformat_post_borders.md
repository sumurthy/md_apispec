# Create RangeBorder

Use this API to create a new RangeBorder.
### Prerequisites
The following **scopes** are required to execute this API: 
### HTTP request
<!-- { "blockType": "ignored" } -->
```http
POST /workbook/names/<name>/range/format/borders
POST /workbook/bindings/<id>/range/format/borders
POST /workbook/tables/<id|name>/range/format/borders

```
### Request headers
| Name       | Type | Description|
|:---------------|:--------|:----------|
| Authorization  |string | Oauth2 authorization code. Required.| 
| Workbook-Session-Id  |string |It is recommended to include the workbook session Id along with the request. Optional.|

### Request body
In the request body, supply a JSON representation of [RangeBorder](../resources/rangeborder.md) object.


### Response
If successful, this method returns `201, Created` response code and [RangeBorder](../resources/rangeborder.md) object in the response body.

### Example
##### Request
Here is an example of the request.
<!-- {
  "blockType": "request",
  "name": "create_rangeborder_from_rangeformat"
}-->
```http
POST https://graph.microsoft.com/beta/workbook/names/<name>/range/format
```
In the request body, supply a JSON representation of [RangeBorder](../resources/rangeborder.md) object.
##### Response
Here is an example of the response.
<!-- {
  "blockType": "response",
  "truncated": false,
  "@odata.type": "microsoft.graph.rangeborder"
} -->
```http
HTTP/1.1 201 Created
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
  "description": "Create RangeBorder",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->