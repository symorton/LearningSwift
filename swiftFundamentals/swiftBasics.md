# Basic Structure of Swift

* Semicolons aren't needed
* Focus on simplicity and clarity
* No main method

print("Hello")

* is a basic program that works without being wrapped in functions and such
* `func` defines functions
* Swift is a type-safe language
* Use Lower Camel Case for variables
* `var` is required for creating a variable and the only option
* `let` creates a constant (cannot be changed)
  * constants are highly encouraged
  * default to `let` instead of `var`

Great Playground in xcode.

* When do not have initial value for variable, provide data type

```
var bonusScore: Int
var environmentName: String
var double: Double
```

Core Collections Types
* Array
* Dictionary
* Set

```
let a = 5.0
let b = 2.0
let myResults = a / b
type(of: myResult) // Double.Type
```

In Swift, we don't have implicit conversion of Type. (can't make an int into a double for example)

## Converting Data
```
var score = 1
var highScore = 100.0

highScore = score // does not work
// do this instead
highScore = Double(score)
// or another example 
let myString = String(myFloat)
```

## Optionals

```
var middleName: String?
```
* keyword: `nil` for no value if optional
* `nil` is not the same as `null` because in Swift, any type can be optional

Unwrapping Optionals
* only want to when there is actually a value

```
// way #1
if optionalInt == nil {
  // "forced unwrapping"
  var unwrappyedInt = optionaInt!
}

// way #2 "optional binding"
if let unwrappedInt = optionalInt {
  print(unwrappedInt)
} else {
  // no value
}
```

## Creating and Using Swift Arrays

* Zero-based 
* Type-safe
* mutable or immutable

```
musicalModes.append("Locrian")
musicalModes.removeFirst()

// declared as Array but uninitialized
var myStringArray: [String]

//initialize
myStringArray = []
```



