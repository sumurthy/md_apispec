# Create ChartPointsCollection

Use this API to create a new ChartPointsCollection.
### Prerequisites
The following **scopes** are required to execute this API: 
### HTTP request
<!-- { "blockType": "ignored" } -->
```http
POST /workbook/worksheets/<id|name>/charts/<name>/series/<undefined>/points

```
### Request headers
| Name       | Type | Description|
|:---------------|:--------|:----------|
| Authorization  |string | Oauth2 authorization code. Required.| 
| Workbook-Session-Id  |string |It is recommended to include the workbook session Id along with the request. Optional.|

### Request body
In the request body, supply a JSON representation of [ChartPointsCollection](../resources/chartpointscollection.md) object.


### Response
If successful, this method returns `201, Created` response code and [ChartPointsCollection](../resources/chartpointscollection.md) object in the response body.

### Example
##### Request
Here is an example of the request.
<!-- {
  "blockType": "request",
  "name": "create_chartpointscollection_from_chartseries"
}-->
```http
POST https://graph.microsoft.com/beta/workbook/worksheets/<id|name>/charts/<name>/series/<undefined>
```
In the request body, supply a JSON representation of [ChartPointsCollection](../resources/chartpointscollection.md) object.
##### Response
Here is an example of the response.
<!-- {
  "blockType": "response",
  "truncated": false,
  "@odata.type": "microsoft.graph.chartpointscollection"
} -->
```http
HTTP/1.1 201 Created
Content-type: application/json
Content-length: 127

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
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "Create ChartPointsCollection",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->