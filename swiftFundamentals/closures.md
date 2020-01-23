# Closures

* Closures let us take lines of code and group it together to use elsewhere in our program
* Functions are types of Closures
* Closures do not have names
    * Writing code that you want to pass.
* Pass a Closure into a function
    * like lambdas or anonymous functions

```
// sorted func on array example
func sorted(by: (Element, Element) -> Bool)

let books = [book1, book2, book3, book4]

func compareTwoBooks(first: Book, second: Book) -> Bool {
    if firstBook.age <= second.age {
        return true
    } else {
        return false
    }
}

let ageSortedBooks = books.sorted(by: compareTwoBooks)

// OR use closure expression

let ageSortedBooks = books.sorted(by: {
    (first: Book, second: Book) -> Bool
    in
    if firstBook.age <= second.age {
        return true
    } else {
        return false
    }
})

// OR

let ageSortedBooks = books.sorted { $0.readingAge <= $1.readingAge }
// like a lambda 
// $0 automatic first param

let filteredBooks = books.filter { $0.readingAge < 10 }
```

SO CONCISE





