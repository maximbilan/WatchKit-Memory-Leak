### `WKInterfaceController.reloadRootPageControllers` has a memory leak?  (FB8665501)

if you're passing more than 1 context with the same object through `reloadRootPageControllers` function in `WKInterfaceController` the passed context will never be deallocated from memory.

```swift
let context = Context(name: "context")
WKInterfaceController.reloadRootPageControllers(withNames: ["first", "second"], contexts: [context, context], orientation: .horizontal, pageIndex: 0)
```
