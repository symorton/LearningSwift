# Abstract Factory Method

* The AbstractFactory defines the "create" operations
* Concrete factories implement the abstract factory interface
* One AbstractProduct per product family
* Concrete products implement the abstract product interface

SO! Client only deals with abstract interfaces

* Use this to contain a set instead of just one.

```swift
public class ComputerFactory {
    public func chooseFinish() -> Finish? {
        return nil
    }

    public func chooseProcessor() -> Processor {
        return nil
    }

    public func chooseGraphics() -> Graphics? {
        return nil
    }

    public final class func makeFactory(type: ComputerType) -> ComputerFactory {
        var factory: ComputerFactory

        switch(type) {
            case: .office:
            factory = OfficeComputerFactory()
        }
    }
}

public enum ComputerType {
    case office
    case highEnd
}

private class OfficeComputerFactory: ComputerFactory {
    override func chooseFinish() -> Finish? {
        return Silver()
    }

    override func chooseProcessor() -> Processor? {
        return Fast()
    }

    override func chooseGraphics() -> Graphics? {
        return Standard()
    }
}
```

Then to use it:
```swift
func createComputer(factory: ComputerFactory) -> Computer? {
    guard let finish = factory.chooseFinish(),
    let processor = factory.chooseProcessor(),
    let graphics = factory.chooseGraphics() else {
        return nil
    }
    return Computer(finish, processor, graphics)
}

var factory = ComputerFactory.makeFactory(type: ComputerType.office)
if let officeComputer = createComputer(factory: factory) {
    print(officeComputer)
}
```
