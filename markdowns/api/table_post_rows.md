# Create TableRow

Use this API to create a new TableRow.
### Prerequisites
The following **scopes** are required to execute this API: 
### HTTP request
<!-- { "blockType": "ignored" } -->
```http
POST /workbook/tables/<id|name>/rows
POST /workbook/bindings/<id>/table/rows
POST /workbook/worksheets/<id|name>/tables/<id|name>/rows

```
### Request headers
| Name       | Type | Description|
|:---------------|:--------|:----------|
| Authorization  |string | Oauth2 authorization code. Required.| 
| Workbook-Session-Id  |string |It is recommended to include the workbook session Id along with the request. Optional.|

### Request body
In the request body, supply a JSON representation of [TableRow](../resources/tablerow.md) object.


### Response
If successful, this method returns `201, Created` response code and [TableRow](../resources/tablerow.md) object in the response body.

### Example
##### Request
Here is an example of the request.
<!-- {
  "blockType": "request",
  "name": "create_tablerow_from_table"
}-->
```http
POST https://graph.microsoft.com/beta/workbook/tables/<id|name>
```
In the request body, supply a JSON representation of [TableRow](../resources/tablerow.md) object.
##### Response
Here is an example of the response.
<!-- {
  "blockType": "response",
  "truncated": false,
  "@odata.type": "microsoft.graph.tablerow"
} -->
```http
HTTP/1.1 201 Created
Content-type: application/json
Content-length: 36

{
  "index": 99,
  "values": {
  }
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "Create TableRow",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->