# Create TableCollection

Use this API to create a new TableCollection.
### Prerequisites
The following **scopes** are required to execute this API: 
### HTTP request
<!-- { "blockType": "ignored" } -->
```http
POST /workbook/tables

```
### Request headers
| Name       | Type | Description|
|:---------------|:--------|:----------|
| Authorization  |string | Oauth2 authorization code. Required.| 
| Workbook-Session-Id  |string |It is recommended to include the workbook session Id along with the request. Optional.|

### Request body
In the request body, supply a JSON representation of [TableCollection](../resources/tablecollection.md) object.


### Response
If successful, this method returns `201, Created` response code and [TableCollection](../resources/tablecollection.md) object in the response body.

### Example
##### Request
Here is an example of the request.
<!-- {
  "blockType": "request",
  "name": "create_tablecollection_from_workbook"
}-->
```http
POST https://graph.microsoft.com/beta/workbook
```
In the request body, supply a JSON representation of [TableCollection](../resources/tablecollection.md) object.
##### Response
Here is an example of the response.
<!-- {
  "blockType": "response",
  "truncated": false,
  "@odata.type": "microsoft.graph.tablecollection"
} -->
```http
HTTP/1.1 201 Created
Content-type: application/json
Content-length: 632

{
  "count": 99,
  "items": [
    {
      "id": 99,
      "name": "name-value",
      "showHeaders": true,
      "showTotals": true,
      "style": "style-value",
      "columns": [
        {
          "count": 99,
          "items": [
            {
              "id": 99,
              "name": "name-value",
              "index": 99,
              "values": {
              }
            }
          ]
        }
      ],
      "rows": [
        {
          "count": 99,
          "items": [
            {
              "index": 99,
              "values": {
              }
            }
          ]
        }
      ]
    }
  ]
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "Create TableCollection",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->