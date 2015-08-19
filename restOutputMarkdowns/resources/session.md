# Session

Represents the Excel workbook sessions. It is a good practice to create workbook session and pass it along with the request as part of the request header as it allows the server to link the API request to an existing in-memory copy of the file on the server. If a session ID is not provided, the server dynamically creates a session behind the scene. However, this requires additional server side processing and could add to the latency of the response. Session ID has a life span which gets extended with each usage or regresh. Once a session ID has expired, a new session session ID needs to be created. If an expired or invalid session token is provided as part of the request, the API will return an error indicating that the session ID is not valid.

## Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|id|string|Excel workbook view or edit session ID. Read-only.|
|type|string|Session Type. Possible values are: Edit or View Read-only.|

## Relationships
None


## Tasks

| Task		   | Return Type	|Description|
|:---------------|:--------|:----------|
|[Get metadata](../api/session_get.md) | Session |Read properties and relationships of session object.|
|[Delete](../api/session_delete.md)|None|Deletes the session ID sent along with the api request.|
