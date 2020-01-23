# Data Types

## Enumerations

```
enum MediaType {
    case book
    case movie
    case music
    case game
}

var itemType: MediaType
itemType = MediaType.movie
// OR
itemType = .game
// because they know what type it is.

Then use with switch statement

switch itemType {
    case .movie:
        ...
}
// no default because know exhaustive
```

### Raw Values
```
enum BottleSize: String {
    case half = "37.5 cl"
    case standard = "75 cl"
    ...
}
var myBottle: BottleSize = .standard
print("\(myBottle.rawValue)")
// will print out raw data of enum value
```

### Associated Values
* Can add a value to each value in the enum

```
enum MediaType {
    case movie(String)
    case music(Int)
    case book(String)
}

var item: MediaType = .movie("Comedy")

switch item {
    case .movie(let genre):
        // ...
    case .music(let bpm):
        // ...
    case .book(let author):
        // ...
}
```

## Structs

```
struct Movie {
    // properties
    var title: String
    var director: String
    var releaseYear: Int
    var genre: String

    func summary() -> String {
        print("summary")
    }
}

var first = Movie(title: "Arrival", director: "Denis Villeneuve", releaseYear: 2016, genre: SF)

print(first.title)
first.releaseYear = 2017
```

* Structs cannot take part in inheritance
* Structs are values types where as Classes are reference types.

## Dictionaries
* Key-Value Pairs

``` 
var airlines = ["SWA": "Southwest Airline",
                "BAW": "British Airways",
                "CPA": "Cathay Pacific" ]

let results = airlines["SWA"]
print(results)

// lookup will be an optional String, so do this:
if let result = airlines["SWA"] {
    print(result)
} else {
    print("No match found")
}

// add or change
airlines["DVA"] = "Discovery Airlines"

// removing value from dictionary
airlines["BHA"] = nil


for entry in airlines {
    print(entry)
}
// OR use tuples
for (code, airline) in airlines {
    print(airline)
}
```

## Tuples

```
let cameraType = "Canon"
let photoMode = true
let iso = 640

var basicTuple = (iso, photoMode, cameraType)
```

* Use it to return multiple values from a function

```
func randomAlbum() -> (albumTitle: String, length: Int) {}

let result = randomAlbum()
print(result.length)
// OR
let (nextTitle, length) = randomAlbum()
```


