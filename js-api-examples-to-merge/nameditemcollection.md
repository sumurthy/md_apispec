# NamedItem Collection
A collection of all the nameditem objects that are part of the workbook. 

### Getter 

```js
var ctx = new Excel.RequestContext();
var nameditems = ctx.workbook.names;
nameditems.load(items);
ctx.executeAsync().then(function () {
	for (var i = 0; i < nameditems.items.length; i++)
	{
		Console.log(nameditems.items[i].name);
		Console.log(nameditems.items[i].index);
	}
});
```

Get the number of nameditems.

```js
var ctx = new Excel.RequestContext();
var nameditems = ctx.workbook.names;
nameditems.load(count);
ctx.executeAsync().then(function () {
	Console.log("nameditems: Count= " + nameditems.count);
});

```

### getItem(name: string)

```js
var ctx = new Excel.RequestContext();
var nameditem = ctx.workbook.names.getItem(wSheetName);
nameditem.load(type);
ctx.executeAsync().then(function () {
		Console.log(nameditem.type);
});
```
### getItemAt(index: number)

```js
var ctx = new Excel.RequestContext();
var nameditem = ctx.workbook.names.getItemAt(0);
nameditem.load(name);
ctx.executeAsync().then(function () {
		Console.log(nameditem.name);
});
```