# Composite

Motivation
* Create hierarchical recursive tree structures
    * Objects can represent a leaf or a composite
* Manage collections and individual objects in a uniform manner
* All objects in the composite must implement the same interface

```swift
public protocol FileSystemEntry: CustomStringConvertible {
    init(name: String)
    func nesting(level: Int)
    var size: UInt32 { get }
}
```
Then File and Directory inherit from them

* Treat individual objects and collections of objects uniformly
* Use the same type/protocol to access the elements

Pitfalls
* Design may become overly general
* Allow changes of the composite structure

