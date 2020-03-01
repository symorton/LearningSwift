# Bridge

Motivation
* Exploding class hierarchy
    * Sign of poorly designed/refactored code
* Separate abstraction from implementation
    * Organize common and specific functionality into different hierarchies
    * Allows changing abstraction and implementation independently
    * Reduces the impact of changes

MessageSending --> MessageHandling

```swift
protocol MessageHandling {
    func modify(message: String) -> String
}

protocol MessageSending {
    func send(messageHandler: MessageHandling, message: String)
}
```

Separates common and specific functionality
