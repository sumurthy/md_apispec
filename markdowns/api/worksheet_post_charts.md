# Create ChartCollection

Use this API to create a new ChartCollection.
### Prerequisites
The following **scopes** are required to execute this API: 
### HTTP request
<!-- { "blockType": "ignored" } -->
```http
POST /workbook/worksheets/<id|name>/charts

```
### Request headers
| Name       | Type | Description|
|:---------------|:--------|:----------|
| Authorization  |string | Oauth2 authorization code. Required.| 
| Workbook-Session-Id  |string |It is recommended to include the workbook session Id along with the request. Optional.|

### Request body
In the request body, supply a JSON representation of [ChartCollection](../resources/chartcollection.md) object.


### Response
If successful, this method returns `201, Created` response code and [ChartCollection](../resources/chartcollection.md) object in the response body.

### Example
##### Request
Here is an example of the request.
<!-- {
  "blockType": "request",
  "name": "create_chartcollection_from_worksheet"
}-->
```http
POST https://graph.microsoft.com/beta/workbook/worksheets/<id|name>
```
In the request body, supply a JSON representation of [ChartCollection](../resources/chartcollection.md) object.
##### Response
Here is an example of the response.
<!-- {
  "blockType": "response",
  "truncated": false,
  "@odata.type": "microsoft.graph.chartcollection"
} -->
```http
HTTP/1.1 201 Created
Content-type: application/json
Content-length: 6424

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
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "Create ChartCollection",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->