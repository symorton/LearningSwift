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

  ### Invoking Delegate Methods

  ```
  NS_ASSUME_NONNULL_BEGIN

  @protocol DBNObjectDelegate;

  @interface DBNObject : NSObject

  // Delegates are weakly assigned, using id<DelegateName> as the type
  @property (weak, nullable) id<DBNObjectDelegate> delegate;

  - (void)doSomething;
  @end

  NS_ASSUME_NONNULL_END
  ```

  ```
  - (void)doSomething {
      id<DBNObjectDelegate> delegate = self.delegate; //strong reference
      if (delegate) {
          if ([delegate respondsToSelector:@selector(objectWillDoSomething:)]) { // SEL type
            [delegate objectWillDoSomething:self]; // pass self as argument
          }

          // do something ....

          [delegate objectDidDoSomething:self]; // no check required here
      }
  }


## Associative References
* Feature of ObjC runtime
* Link objects much like properties or instance variables
* Usable with framework classes where source code is unavailable

1. `objc_setAssociatedObject()` - make an association between one object and another
2. `objc_getAssociatedObject()` - retrieve associated object
3. `objc_removeAssociatedObjects()` - breaks all associations for an object.

## Blocks
* Objects assignable as properties or method parameters
* Comparable to Swift closures
* Capture state within defined scope
* Take arguments and return values
* Use Cases:
  * Fast enumeration
  * Scheduling tasks on dispatch queues and operation queues.

Example:

```objc
int (^add)(int, int);

add = ^(int first, int second) {
  return first + second
}

int result = add(2,4);
```
