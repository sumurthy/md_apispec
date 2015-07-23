### getItem(id: string)

Create a table binding to monitor data changes in the table. When data is changed, the background color of the table will be changed to orange.

```js
function addEventHandler() {

    //Create Table1
    var ctx = new Excel.RequestContext();
    ctx.workbook.tables.add("Sheet1!A1:C4", true);
    ctx.executeAsync()
         .then(function () {
             console.log("My Diet Data Inserted!");
         })
         .catch(function (error) {
             console.log(JSON.stringify(error));
         });

    //Create a new table binding for Table1
    Office.context.document.bindings.addFromNamedItemAsync("Table1", Office.CoercionType.Table, { id: "myBinding" }, function (asyncResult) {
        if (asyncResult.status == "failed") {
            console.log("Action failed with error: " + asyncResult.error.message);
        }
        else {
            // If succeeded, then add event handler to the table binding.
            Office.select("bindings#myBinding").addHandlerAsync(Office.EventType.BindingDataChanged, onBindingDataChanged);
        }
    });
}

// when data in the table is changed, this event will be triggered.
function onBindingDataChanged(eventArgs) {
    var ctx = new Excel.RequestContext();
    // highlight the table in orange to indicate data has been changed.
    ctx.workbook.bindings.getItem(eventArgs.binding.id).getTable().getDataBodyRange().format.fill.color = "Orange";
    ctx.executeAsync()
        .then(function () {
            console.log("The value in this table got changed!");
        })
        .catch(function (error) {
            console.log(JSON.stringify(error));
        });
}

```


### getItemAt(index: number)
```js
var ctx = new Excel.RequestContext();
var lastPosition = ctx.workbook.bindings.count - 1;
var binding = ctx.workbook.bindings.getItemAt(lastPosition);
ctx.executeAsync().then(function () {
		Console.log(binding.type); 
});
```

### Getter 

```js
var ctx = new Excel.RequestContext();
var bindings = ctx.workbook.bindings;
ctx.load(bindings);
ctx.executeAsync().then(function () {
	for (var i = 0; i < bindings.items.length; i++)
	{
		Console.log(bindings.items[i].id);
		Console.log(bindings.items[i].index);
	}
});
```
Get the number of bindings

```js
var ctx = new Excel.RequestContext();
var bindings = ctx.workbook.bindings;
ctx.load(bindings);
ctx.executeAsync().then(function () {
	Console.log("Bindings: Count= " + bindings.count);
});

```