# The Singleton
Ensure that a class has only on instance.

* Hidden initializer to prevent instantiation
* Global access point to the shared instance
* Value types can't implement the Singleton
* Singleton classes must not adopt the NSCopying protocol

When to use
* Represent a single resource
* Consolidate usage across components
* AppDelegate is a good example

How to avoid common pitfalls?
* Ensure thread-safety
* Adhere to the Single Responsibility Principle
* Avoid tight coupling
    * Changing the Singleton may impact depending types

Example with serialDispatch:
```swift 
final public class AppSettings {

    // helps with thread safety
    private let serialQueue = DispatchQueue(label: "serialQueue")

    private var settings: [String: Any] = []

    private init() {}

    // only one instance
    public static let shared = AppSettings()

    public func set(value: Any, forKey key: String) {
        serialQueue.sync {
            settings[key] = value
        }
    }

    public func object(forKey key: String) -> Any? {
        var result: Any?
        serialQueue.sync {
            result = settings[key]
        }
        return result
    }

    public func reset() {
        settings.removeAll()
    }
}
```

* Thread Sanitizer helps with debugging thread issues
* DispatchQueue is very valuable
* serialQueue blocks so that we are not reading and writing to same dictionary.

* Readers-Writers Lock
    * This is performance optimized a bit more.
Example:
```swift 
final public class AppSettings {

    // helps with thread safety
    private let concurrentQueue = DispatchQueue(label: "concurrentQueue", attributes: .concurrent)

    private var settings: [String: Any] = []

    private init() {}

    // only one instance
    public static let shared = AppSettings()

    public func set(value: Any, forKey key: String) {
        concurrentQueue.async(flags: .barrier) {
            self.settings[key] = value
        }
    }

    public func object(forKey key: String) -> Any? {
        var result: Any?
        concurrentQueue.async(flags: .barrier) {
            result = settings[key]
        }
        return result
    }

    public func reset() {
        settings.removeAll()
    }
}
```