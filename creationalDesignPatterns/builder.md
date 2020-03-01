# Builder
* Separates the construction of complex obejcts from their representation

When to avoid the builder?
* No complex setup required
* Configuration values are different for each instance

Example:
```swift
public protocol LaptopBuilder {
    var size: Size {get set}
    var processor: Processor {get set}
    var graphics: Graphics {get set}

    // mutating keyword because changes the internal state of the builder
    mutating public func buildParts(config: [String: String])
    
    func getLaptop() -> Laptop
}

extension LaptopBuilder {
    mutating func buildParts(config: [String: String]) {
        // changes laptopBuilder size, processor, and graphics based on the config dictionary
    }

    func getLaptop() -> Laptop {
        return Laptop(size: size, processor: processor, graphics: graphics)
    }
}

public class BudgetLaptopBuilder: LaptopBuilder {
    public var size = Size.thirteenInch
    public var processor = Processor.i5
    public var graphics = Graphics.intelUHD617

    public init() {}
}

public class Director {
    private var Builder: LaptopBuilder?

    public init(builder: LaptopBuilder?) {
        self.builder = builder
    }

    public func constructLaptopn(config: [String: String]) {
        builder?.buildParts(config: config)
    }
}
```

And then use a builder
```swift
// this is the only logic needed on caller side
func createBuilder(config) {
    let model = //check base_model and return appropriate builder based on that

    switch model {
        case "budget":
            result = BudgetLaptopBuilder()
        case "office":
            result = OfficeLaptopBuilder()
    }

    return result
}

var director = Director(builder: laptopBuilder)
director.constructLaptopn(config: config)
print(laptopBuilder?.getLaptop())
