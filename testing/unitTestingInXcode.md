# Unit Testing in Xcode

## Structuring Tests in XCTest
Made up of the followings:
1. Unit Testing Bundle
    * 1-to-1 relationship to project and bundle
2. Unit Test Class
    * I would say 1 Unit Test Class per 1 Class in Project
3. Unit Test Method
    * Setup/Teardown/Test
4. Assertions
    * Inside Methods
    * Informing compilier of rule that you have defined

## Creating a Simple Unit Test
Example:

```swift
@testable import inventoryApp

class inventoryappTests: XCTestCase {
    func testAddItem() {
        let item = InventoryItem(name: "Rogue", units: 5)
        InventoryManager.add(item: item)

// this will check if equal.
        XCTAssertEqual(InventoryManager.items.count, 5)
    }
}
```

## Using setUp() and tearDown()

```swift
@testable import inventoryApp

class inventoryappTests: XCTestCase {
    func testAddItem() {
        let item = InventoryItem(name: "Rogue", units: 5)
        InventoryManager.add(item: item)

// this will check if equal.
        XCTAssertEqual(InventoryManager.items.count, 5)
    }

    func testAddItem() {
        let item = InventoryItem(name: "Rogue", units: 5)
        InventoryManager.add(item: item)

// this will check if equal.
        XCTAssertEqual(InventoryManager.items.count, 5)
    }
}
```
This will fail because InventoryManager is a Singleton so we need to TearDown() and setUp()

```swift
override func tearDown() {
    InventoryManager.items = []
}
```

## Multiple Asserts

```swift
func testAddItemVerifyDetails() {
    let item = InventoryItem(name: "Rogue", units: 5)
        InventoryManager.add(item: item)
}
```

## Mocking

* Creating UserDefaultsExtension and protocol

```swift
protocol UserDefaultsProtocol {
    func theObject(forKey key: String) -> Any?

    func setTheObject(_ object: Any, forKey key: String)

    func removeTheObject(forKey key: String)

    func synchronizeAll()
}

extension UserDefaults: UserDefaultsProtocol {
    func theObject(forKey key: String) -> Any? {
        // some logic
    }

    func setTheObject(_ object: Any, forKey key: String) {
        // some logic
    }

    func removeTheObject(forKey key: String) {
        // some logic
    }

    func synchronizeAll() {
        // some logic
    }

}

/// then in some unit test file
class UserDefaultsMocks: NSObject, UserDefaultsProtocol {
    private var dict = [String: Any?]()

    deinit {
        dict.removeall()
    }

    func theObject(forKey key: String) -> Any? {
        if let object = dict[key] {
            return object
        }
        return nil
    }

    func setTheObject(_ object: Any, forKey key: String) {
        // some logic with array
    }

    func removeTheObject(forKey key: String) {
        // some logic with array
    }

    func synchronizeAll() {
        // some logic with array
    }
}

/// And then the tests to use mocks
func testSetFontSize() {
    PreferenceManager.setStorage(storage: UserDefaultsMocks() as UserDefaultsProtocol)
    let fontSize = 10
    PreferenceManager.setFontSize(fontSize: fontSize)
    XCTAssertEqual(PreferenceManager.getFontSize(), fontSize, "Font size was not set")
}

func testGetDefaultFontSize() {
    PreferenceManager.setStorage(storage: UserDefaultsMocks() as UserDefaultsProtocol)
    XCTAssertEqual(PreferenceManager.getFontSize(), 8)
}
```
* Injections of context.

