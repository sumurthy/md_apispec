# Workbook Session

Represents the Excel workbook session. The session is managed by the server and provides a way for collaborative updates to take place across all the clients currently editing or viewing the Excel file. It is a good practice to create workbook and passed along with the request as part of the request header as allows the server to link the API request to an existing session available on the server. If a session token is not provided, the server dynamically creates a session behind the scene. However, this requires additional server side processing and could add to the latency of the response. 

Token life span lasts up to 900 seconds from the time of creation or its last usage. Once a session token has expired, a new session token needs to be created. 

If an expired or invalid session token is provided as part of the request, the API will return an error indicating that the session token is not valid. 

## Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|sessionToken|string|Excel workbook session token value. Read-only.|

## Relationships
None

## Tasks

| Task		   | Return Type	|Description|
|:---------------|:--------|:----------|
|[Delete](../api/session_delete.md)|None|Deletes the session token sent along with the api request.|
|[Create Session](../api/session_create.md)|[Session](session.md)|Create a new Excel workbook session token.|
