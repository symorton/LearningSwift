## iOS 11 Developer Skillset

* Swift
  * Syntax
  * Best Practices
  * Working with pre-Swift technologies
* Developer Tools
  * Xcode
  * Simulator
  * Instruments
* iOS Architecture
  * iOS Application Lifecycle
  * Using Existing Frameworks
  * Device Capabilities
* Patterns and Practices
  * Software Patterns
  * Human Interface Guidlines
  * Deployment


  ### Why is the first "view" important?
  1. It's already there
  2. It has a background color
  3. It acts as a container for all the other views.

Open up document outline to see view hierarchy

* To forcibly down cast an object to a subclass of that object (for example, UIView to UILable), use `as!`:

```
if view is UILabel {
    let currentLabel = eachView as! UILabel
}
```

## Model-View-Controller in iOS

* Model
    * defines data and behavior / business logic
    * nothing about presentation
* View
    * Presentation / user interaction -- no business logic, and no storage or calculation of data
* Controller
    * To connect the model to the view, and the view to the model
* Many - to - Many relationships
* Views are created using xml but we don't actually edit the xml

## Controllers

### Actions
* When want a UI object to make something happen, it is an action
* Implemented as method

### Outlets
* From code to UI.
* Implemented as a property.
* weak because storyboard owns life cycle 
    * strong means viewController owns life cycle

* If want to delete connection, must delete it in ViewController and story board.

## Table Views
* Only one column wide
* Each row has a single cell which contains content
* Sections in table view with optional headers and footers
* Needs to know how many rows, and what is in each row
    * Provide this using a protocol

### Protocols
* Data Source and Delegate Protocols

Data Source
* Provides methods to show data

Delegate
* Provides methods to interact, change appearance

## Tips

* Reuse cells when there are a lot to save memory by calling: 

```
// in tableView returning cell to use
tableView.dequeueReusableCell(withIdentifier: "normalCell", for: indexPath)
```

** must add a UITableViewCell to story board in order to get Identifier for cell type.

Standard Table View Cell Properties
* imageView
* textLabel
* accessoryType
    * .disclosureIndicator
    * .checkMark
* detailTextLabel



