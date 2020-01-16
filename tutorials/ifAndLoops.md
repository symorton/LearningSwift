# Controlling Flow

## If Statements

```
if x > 1000 {
  print("true")
} else {
  print("false")
}
```

## Switch Statements

```
let index: Int
index = 3

switch index {
case 0:
  print("hey")
case 1: 
  print("hello")
case 2: 
  print("uh oh")
case 3,4,5:
  print("oh ya")
case 6...10:
  print("oh ya")
default:
  print("everything else")
}
```

* Any switch statement must be exhaustive
* each case must include one line of executable code (no fallthrough)
* if want to do nothing, `break`

`...` Range Operator (start to end inclusive)

## For loops
* There is no for loops?

Use `for in` loops instead.

```
for item in items {
  code
}

for number in 0...10 {
  print(number)
}

// prints 0 2 4 6 8 10
for number in stride(from: 0, to: 10, by: 2) {
  print(number)
}
```

## String Interpolation

```
let message = "Now playing \(trackName) by \(artistName) which is \(duration) long"
```

