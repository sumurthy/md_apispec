# TableCollection

Represents a collection of all the tables that are part of the workbook.

## Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|count|int|Returns the number of tables in the workbook. Read-only.|
|items|[Table[]](table.md)|A collection of table objects. Read-only.|

## Relationships
None


## Tasks

| Task		   | Return Type	|Description|
|:---------------|:--------|:----------|
| [List](../api/tablecollection_list.md) | Table[]|Get table object collection. |
|[Add](../api/tablecollection_add.md)|[Table](table.md)|Create a new table. The range source address determines the worksheet under which the table will be added. If the table cannot be added (e.g., because the address is invalid, or the table would overlap with another table), an error will be thrown.|
