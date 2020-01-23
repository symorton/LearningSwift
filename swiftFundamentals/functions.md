# Functions

* syntax for functions and methods is the same (`func`)

```
func showMessage(number: Int) -> Int{
  print("works \(number)")
} 

// later

showMessage(number: 42)
```

* named parameters
* parameters are constants, and immutable by default

## Omitting Argument Labels

```
func showMessage(_ message: String) {}

showMessage("hello")
```

* I like argument labels though
* Underscores usually means omit something

* Changing parameter name:
```
func showMessage(textToShow message: String) {}

showMessage(textToShow: "hello")
```

## Naming Functions
```
show(message: "hello")
//instead of 
showMessage(message: "hello")
```


