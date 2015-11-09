# Create ChartSeriesCollection

Use this API to create a new ChartSeriesCollection.
### Prerequisites
The following **scopes** are required to execute this API: 
### HTTP request
<!-- { "blockType": "ignored" } -->
```http
POST /workbook/worksheets/<id|name>/charts/<name>/series

```
### Request headers
| Name       | Type | Description|
|:---------------|:--------|:----------|
| Authorization  |string | Oauth2 authorization code. Required.| 
| Workbook-Session-Id  |string |It is recommended to include the workbook session Id along with the request. Optional.|

### Request body
In the request body, supply a JSON representation of [ChartSeriesCollection](../resources/chartseriescollection.md) object.


### Response
If successful, this method returns `201, Created` response code and [ChartSeriesCollection](../resources/chartseriescollection.md) object in the response body.

### Example
##### Request
Here is an example of the request.
<!-- {
  "blockType": "request",
  "name": "create_chartseriescollection_from_chart"
}-->
```http
POST https://graph.microsoft.com/beta/workbook/worksheets/<id|name>/charts/<name>
```
In the request body, supply a JSON representation of [ChartSeriesCollection](../resources/chartseriescollection.md) object.
##### Response
Here is an example of the response.
<!-- {
  "blockType": "response",
  "truncated": false,
  "@odata.type": "microsoft.graph.chartseriescollection"
} -->
```http
HTTP/1.1 201 Created
Content-type: application/json
Content-length: 450

{
  "count": 99,
  "items": [
    {
      "format": {
        "fill": {
        },
        "line": {
          "color": "color-value"
        }
      },
      "name": "name-value",
      "points": [
        {
          "count": 99,
          "items": [
            {
              "format": {
                "fill": {
                }
              },
              "value": {
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
  "description": "Create ChartSeriesCollection",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->