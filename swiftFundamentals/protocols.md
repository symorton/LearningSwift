# Protocols

* Rules of what a class or struct or Enum can do.
* Each protocol has a:
    * name
    * list of methods
    * list of properties

* Usage
    * General Purpose
        * Creating Collections
        * Comparing Instances
        * Converting
        * Sorting
        * Debugging
    * App-specific
        * Loading Data
        * Saving Data
        * Spellchecking
        * Resizing UIs

    ## Example

    `CustomStringConvertible` Protocol

    * class MyNewClass: SomeSuperClass, SomeProtocol
    * Swift classes allow single class inheritance
    * swift classes, structs, and enums allow multiple protocols.

```
// will print description when print method called
class Player: CustomStringConvertible {
    
    var description: String {
        return "I want this to be printed out"
    }
}

```

Defining a protocol 
```
protocol MyProtocol {
    func showMessage()

    // read / write property
    var name: String {
        get set
    }
}
```

## Adopt / Conform

```
struct MyStruct: MyProtocol {
    func showMessage() {
        return "message"
    }

    var name = "Syd"
}
```

## Error Handling in Swift
* Recoverable Errors

* Three Parts to Error Handling
    1. Define it
    2. Throw it
    3. Handle it

lol duh

Swift Errors can be created from any type
* Enum can be great to use
* No built in Error class
* Error is a built in Protocol
    * do not need to add anything
    * marks this as intend to throw

```
enum ServerError: Error {
    case noConnection
    case serverNotFound
    case authenticationRefused
}

// if function might throw an error, add throws keyword

func checkStatus(serverNumber: Int) throws -> String {

    switch serverNumber {
        case 1:
            print("no connection")
            throw ServerError.noConnection
        case 2:
            print("Auth Failed")
            throw ServerError.authenticationRefused
        case 3: 
            print("Server up and running")
        default:
            print("Not found")
            throw ServerError.serverNotFound
    }
    return "Success!"
}

do {
    try checkStatus(serverNumber: 1)
} catch ServerError.noConnection {
    print("problem! \(error)")
} catch {
    print("problem! \(error)")
}
// generic catch at the end.

//OR if don't care about the error

// treat like an optional
let result: String?

do {
    result = try checkStatus(serverNumber: 3)
} catch {
    result = nil
}

if result != nil {
    print(result!)
}

// OR (more concise)

let results = try? checkStatus(serverNumber: 1) {
    print(results)
}
```

## Guard Statements
* close to an if-else statement
* what we hope is true, if not, exit quickly
* guard always has an else. and goes there if false and must have a hard exit
* If condition is true, continue.

```
guard searchController.isActive else { return }

guard let unwrappedName = optionalName else {
    return
}

print(unwrappedName)

guard let unwrappedTrack = optionalTrack ,
let unwrappedArtist = optionalArtist ,
let unwrappedAlbum = optionalAlbum else { return }
```

## Defer

```
fun processCart(cart) {
    myCart.open()
    defer {
        cart.close()
    }
}
```
* What is in defered block will be called right at the end of the function no matter how the function is exited.

