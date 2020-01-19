# Classes and Objects

```
class Appliance {
    //properties
    var model: String = ""
    var voltage: Int = 0
    capacity: Int?

    func getDetails() -> String {
        var message = "model \(model")
        return message
    }
}

// later
var kettle = Application()
kettle model = "TeaMaster"
```
* Provide Initializer or provide Initial Values

## Initializers

```
class Appliance {
    //properties
    var model: String
    var voltage: Int
    capacity: Int?

    // similar to constructor
    init() {
        self.model = "default"
        self.voltage = 220
    }

    // can create multiple as long as different parameters
    init(withVoltage: Int) {
        self.model = "default"
        self.voltage = withVoltage
    }

    //deinitializer
    deinit {

    }

    func getDetails() -> String {
        var message = "model \(model")
        return message
    }
}
```

* Deinitializer
    * for clean up code
    * Cannot be in a struct
* ARC - Automatic Reference Counting
    * Deals with freeing up memory, calls `deinit`

## Structs vs Classes
* Structs do not need defautls
* Classes can take part in inheritance but structs can't
* Structs are value types
    * The value is copied
* Classes
    * Reference Type
    * Noy copied, a reference is copied

* Can use `===` operator to see if two values are identical

## Inheritance
```
class Toaster: Appliance {

    var slices: Int

    // to override Appliance init
    override init() {
        self.slices = 4
        // if override inherited properties
        super.init()
    }

    //new method
    func toast() {
        print("toasting")
    }
}

var toaster = Toaster()
```
* superclass and subclass
* final is a thing as well.
* do not use inheritance as much

## Extensions
* custom functions on existing types

```
extension String {
    fun removeSpaces() -> String {
        let filteredCharacters = self.filter { $0 != " " }
        return String(filteredCharacters)
    }
}
```

## Computed Properties
* properties in a class

```
var score: Int {
    get {
        return variable1 - v2
    }
    set {
        // optional
    }
}

// later 
// score will be computed everytime we get it
player.score
```
* `let` is not allowed with Computed Properties


