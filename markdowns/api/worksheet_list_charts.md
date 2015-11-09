# List charts

Retrieve a list of chartcollection objects.
### Prerequisites
The following **scopes** are required to execute this API: 
### HTTP request
<!-- { "blockType": "ignored" } -->
```http
GET /workbook/worksheets/<id|name>/charts
```
### Optional query parameters
|Name|Value|Description|
|:---------------|:--------|:-------|
|$count|none|The count of related entities can be requested by specifying the $count query option.|
|$expand|string|Comma-separated list of relationships to expand and include in the response. See relationships table of [ChartCollection](../resources/chartcollection.md) for supported names. |
|$filter|string|Filter string that lets you filter the response based on a set of criteria.|
|$orderby|string|Comma-separated list of properties that are used to sort the order of items in the response collection.|
|$select|string|Comma-separated list of properties to include in the response.|
|$skip|int|The number of items to skip in a result set.|
|$skipToken|string|Paging token that is used to get the next set of results.|
|$top|int|The number of items to return in a result set.|

### Request headers
| Name       | Type | Description|
|:-----------|:------|:----------|
| Authorization  |string | Oauth2 authorization code. Required.| 
| Workbook-Session-Id  |string |It is recommended to include the workbook session Id along with the request. Optional.|

### Request body
Do not supply a request body for this method.
### Response
If successful, this method returns a `200 OK` response code and collection of [ChartCollection](../resources/chartcollection.md) objects in the response body.
### Example
##### Request
Here is an example of the request.
<!-- {
  "blockType": "request",
  "name": "get_charts"
}-->
```http
GET https://graph.microsoft.com/beta/workbook/worksheets/<id|name>/charts
```
##### Response
Here is an example of the response.
<!-- {
  "blockType": "response",
  "truncated": false,
  "@odata.type": "microsoft.graph.chartcollection",
  "isCollection": true
} -->
```http
HTTP/1.1 200 OK
Content-type: application/json
Content-length: 7537

{
  "value": [
    {
      "count": 99,
      "items": [
        {
          "axes": {
            "categoryAxis": {
              "format": {
                "font": {
                  "bold": true,
                  "color": "color-value",
                  "italic": true,
                  "name": "name-value",
                  "size": 99,
                  "underline": "underline-value"
                },
                "line": {
                  "color": "color-value"
                }
              },
              "majorGridlines": {
                "visible": true,
                "format": {
                  "line": {
                    "color": "color-value"
                  }
                }
              },
              "majorUnit": {
              },
              "maximum": {
              },
              "minimum": {
              },
              "minorGridlines": {
                "visible": true,
                "format": {
                  "line": {
                    "color": "color-value"
                  }
                }
              },
              "minorUnit": {
              },
              "title": {
                "format": {
                  "font": {
                    "bold": true,
                    "color": "color-value",
                    "italic": true,
                    "name": "name-value",
                    "size": 99,
                    "underline": "underline-value"
                  }
                },
                "text": "text-value",
                "visible": true
              }
            },
            "seriesAxis": {
              "format": {
                "font": {
                  "bold": true,
                  "color": "color-value",
                  "italic": true,
                  "name": "name-value",
                  "size": 99,
                  "underline": "underline-value"
                },
                "line": {
                  "color": "color-value"
                }
              },
              "majorGridlines": {
                "visible": true,
                "format": {
                  "line": {
                    "color": "color-value"
                  }
                }
              },
              "majorUnit": {
              },
              "maximum": {
              },
              "minimum": {
              },
              "minorGridlines": {
                "visible": true,
                "format": {
                  "line": {
                    "color": "color-value"
                  }
                }
              },
              "minorUnit": {
              },
              "title": {
                "format": {
                  "font": {
                    "bold": true,
                    "color": "color-value",
                    "italic": true,
                    "name": "name-value",
                    "size": 99,
                    "underline": "underline-value"
                  }
                },
                "text": "text-value",
                "visible": true
              }
            },
            "valueAxis": {
              "format": {
                "font": {
                  "bold": true,
                  "color": "color-value",
                  "italic": true,
                  "name": "name-value",
                  "size": 99,
                  "underline": "underline-value"
                },
                "line": {
                  "color": "color-value"
                }
              },
              "majorGridlines": {
                "visible": true,
                "format": {
                  "line": {
                    "color": "color-value"
                  }
                }
              },
              "majorUnit": {
              },
              "maximum": {
              },
              "minimum": {
              },
              "minorGridlines": {
                "visible": true,
                "format": {
                  "line": {
                    "color": "color-value"
                  }
                }
              },
              "minorUnit": {
              },
              "title": {
                "format": {
                  "font": {
                    "bold": true,
                    "color": "color-value",
                    "italic": true,
                    "name": "name-value",
                    "size": 99,
                    "underline": "underline-value"
                  }
                },
                "text": "text-value",
                "visible": true
              }
            }
          },
          "dataLabels": {
            "format": {
              "font": {
                "bold": true,
                "color": "color-value",
                "italic": true,
                "name": "name-value",
                "size": 99,
                "underline": "underline-value"
              },
              "fill": {
              }
            },
            "position": "position-value",
            "showValue": true,
            "showSeriesName": true,
            "showCategoryName": true,
            "showLegendKey": true,
            "showPercentage": true,
            "showBubbleSize": true,
            "separator": "separator-value"
          },
          "height": 99,
          "left": 99,
          "legend": {
            "format": {
              "font": {
                "bold": true,
                "color": "color-value",
                "italic": true,
                "name": "name-value",
                "size": 99,
                "underline": "underline-value"
              },
              "fill": {
              }
            },
            "visible": true,
            "position": "position-value",
            "overlay": true
          },
          "name": "name-value",
          "series": [
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
          ],
          "title": {
            "format": {
              "font": {
                "bold": true,
                "color": "color-value",
                "italic": true,
                "name": "name-value",
                "size": 99,
                "underline": "underline-value"
              },
              "fill": {
              }
            },
            "overlay": true,
            "text": "text-value",
            "visible": true
          },
          "top": 99,
          "width": 99,
          "format": {
            "fill": {
            },
            "font": {
              "bold": true,
              "color": "color-value",
              "italic": true,
              "name": "name-value",
              "size": 99,
              "underline": "underline-value"
            }
          }
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
  "description": "List charts",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->