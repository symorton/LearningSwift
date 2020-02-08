# Enhancing Classes

* All ObjC classes can be modified

## Categories
* Add methods to existing classes like Swift extensions
* Declared and implemented in separate header and source code files
* Declared methods available to all instances of class and subclasses
* Properties allowed but require manual implementation of accessor methods
* Instance variables not allowed

## Class Extensions
* Augment implementation
* Available only to classes where source code is available at compile-time
* Used to hide private information
* Add properties, instance variables, and methods to a class

## Protocols
* Define required state and behavior for a class
* Some properties and methods can be marked optional
* Class and protocols can have the same name (not possible in swift)
* Protocol Structure
  * <> denotes conformance requirements to other named protocols
  * @optional declares following members as optional
  * @required keyword only necessary if declared underneath @optional declaration

## Delegates
* Objects that manage tasks for other objects
* Assigned at runtime
* Adhere to one or more specified protocols
* Delegate Structure
  * <"NSObject>" conformance ensures dynamic method is possible
  * Delegate object is provided as the first method argument