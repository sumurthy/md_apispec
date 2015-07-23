# Excel API optional query parameters

The Excel API provides several optional query parameters that can be used to control the specify the data returned in a response.

Covered in this topic:

* [Selecting properties](#selecting-properties)
* [Expanding collections](#expanding-collections)

## Selecting properties
You can use the _select_ query string parameter to provide a comma-separated list of properties to return on any object.

### Example

This example selects only the **address** and **cellCount** properties to be returned, when retrieving the range object.

```http
GET /workbook/worksheets/Sheet1/range('A1:F8')?$select=address,cellCount
```

By submitting the request with the `select=address,cellCount` query string, the objects
in the response will only have those property values included. When using the
select statement, you need to specify all properties to return in the statement.

```json
{
  "value": 
    {
      "address": "Sheet1!A1:F8",
      "cellCount": 48
    }
}
```

## Expanding collections

In Excel API requests, relationships of objects are not automatically expanded. This is by design because it reduces network traffic and the time it takes to generate a response from the service. However, in some cases you might want to include those results in a response.

You can use the _expand_ query string parameter to instruct the Excel API to expand a relationship and include it in the response.

For example, to retrieve the formatting information of a range, use _expand_ parameter as in the example below. This example also uses a _select_ statement to only return the **wrapText** properties of the **format** object. 


```http
GET /workbook/worksheets/Sheet1/range('A3:E6')?$expand=format($select=wrapText)
```

The request returns the collection items, with the children collection expanded.

```http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "cellCount": 16,
  "columnIndex": 1,
  "rowIndex": 2,
  "values": [
                ["Region", "Snow Cover Extent (KM2)", "Anamoly (KM2)", "Date"],
                ["Northern Hemisphere", 47.3, 0.45, 42019],
                ["North America", 17.37, -0.17, 42055],
                ["Eurasia", 29.96, 0.25, 42050]
           ],
  "text":  [
                ["Region", "Snow Cover Extent (KM2)", "Anamoly (KM2)", "Date"],
                ["Northern Hemisphere", "47.32", "0.45", "1\/15\/15"],
                ["North America", "17.37", "-0.17", "2\/20\/15"],
                ["Eurasia", "29.96", "0.25", "2\/15\/15" ]
           ], 
  "numberFormat": [
                ["General", "General", "General", "General"],
                ["General", "0.00",  "0.00",   "m\/d\/yy;@"],
                ["General", "0.00",  "0.00",   "m\/d\/yy;@"],
                ["General", "0.00",  "0.00",   "m\/d\/yy;@"]
           ],

  "formula":  [
                ["Region", "Snow Cover Extent (KM2)", "Anamoly (KM2)", "Date"],
                ["Northern Hemisphere", "47.32", "0.45", "42019"],
                ["North America", "17.37", "-0.17", "42055"],
                ["Eurasia", "29.96", "0.25", "42050"  ]

           ],
  "formulaLocal": [
                ["Region", "Snow Cover Extent (KM2)", "Anamoly (KM2)", "Date"],
                ["Northern Hemisphere", "47.32", "0.45", "42019"],
                ["North America", "17.37", "-0.17", "42055"],
                ["Eurasia", "29.96", "0.25", "=EDATE(E4,1)" ]
           ], 
  "address": "$B$3: $E$6",
  "addressLocal": "$B$3: $E$6" 
  },
  "format": {
    "wrapText" : false
  }
}
```

## Optional OData query parameters
Here is a table of optional OData query parameters you can use in Excel API requests.

| Name        | Value  | Status        | Description                                                                                                                                                          |
|:------------|:-------|:--------------|:---------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| _expand_    | string | available     | Comma-separated list of relationships to expand and include in the response. For example, to retrieve the children of a folder use `expand=children`.                |
| _select_    | string | available     | Comma-separated list of properties to include in the response. |
| _skip_ | string | available     | The number of items to skip in a result set     |
| _top_       | int    | available     | The number of items to return in a result set.  |

