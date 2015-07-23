# Application

Represents the Excel application that manages the workbook.

## Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|calculationMode|string|Returns the calculation mode used in the workbook. Read-only. Possible values are: ``Automatic` Excel controls recalculation.,`AutomaticExceptTables` Excel controls recalculation but ignores changes in tables.,`Manual` Calculation is done when the user requests it.|

## Relationships
None


## Tasks

| Task		   | Return Type	|Description|
|:---------------|:--------|:----------|
| [Get metadata](../api/application_get.md) | Application |Read properties and relationships of application object.|
|[Calculate](../api/application_calculate.md)|None|Recalculate all currently opened workbooks in Excel.|
