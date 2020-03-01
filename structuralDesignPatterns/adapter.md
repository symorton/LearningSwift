# Adapters

Motivation
* Third-party/legacy code
    * We cannot modify the interface, but we have to integrate it in our app/framework
* Adapt the incompatible interface
    * Create adapter that gives the required interface
    * The adapter extends or wraps the incompatible entity

The Adapter pattern maps an existing interface to another interface.

POLYMORPHISM ayeee only know about the protocol not the concrete classes woo

Object Adapter
```swift
public class RedditPosterAdapter: Sharing {
    
    private lazy var redditPoster = RedditPoster()
    public func share(message: String, completionHandler: @escaping (Error?) -> Void) {
        redditPoster.post(text: message, completion: { (error, uuid) in 
            completionHandler(error)
        })
    }
}
```
No Conforms to Sharing Protocol, so can be used with other Sharing concrete classes.


Adapter via extension
```swift
extension RedditPoster: Sharing {
    public func share(message: String, completionHandler: @escaping (Error?) -> Void) {
        self.post(text: message, completion: { (error, uuid) in 
            completionHandler(error)
        })
    }
}
```
