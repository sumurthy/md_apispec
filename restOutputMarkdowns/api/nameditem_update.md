# Update NamedItem

Update the properties of nameditem object.
## HTTP request
```http
PATCH /workbook/names/{name}
```

## Optional request headers
| Name       | Type | Description|
|:-----------|:------|:----------|
| x-session-token   | string  | The edit session token required to join the edit session maintained by Excel server. Refer to session management API for details.|

## Request body
In the request body, supply the values for relevant fields that should be updated. Existing properties that are not included in the request body will maintain their previous values or be recalculated based on changes to other property values. For best performance you shouldn't include existing values that haven't changed.

| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|visible|bool|Specifies whether the object is visible or not.|

## Response
If successful, this method returns a `200 OK` response code and updated [NamedItem](../resources/nameditem.md) object in the response body.
## Example
### HTTP request
### Response
