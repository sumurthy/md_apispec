# Create Session Id

Create Excel session Id. 

## HTTP request
```http
POST /workbook/CreateSession

```
## Request headers
| Name       | Type | Description|
|:-----------|:------|:----------|
| Authorization  |string | Oauth2 authorization code. Required.|

## Request body
In the request body, provide a JSON object that with the following parameters.

| Parameter	   | Type	|Description|
|:---------------|:--------|:-----------|
|persistChanges|boolean|`true`: Persist changes made during the session. Default option. `false`: Do not persist changes made during the session. Optional.|

## Response
If successful, this method returns a `200 OK` response code and a JSON object with `sessionId`.
