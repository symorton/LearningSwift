# The Prototype Pattern
Creates new objects by copying a prototype.

* Instantiate a prototype
* Create new instances by cloning the prototype
* Polymorphic Instantiation

Common Pitfalls
* Cloning of reference types require extra coding
* Understand the difference between shallow and deep copying
* The clones need to be independent objects

## Values Types vs Reference Types
* Value Types: new instance get created everytime it gets copied (struct)
    * Implement cloning behavior

* Reference Types: Prototype behavior not for free
    * Adopt NSCopying Protocol

* Shallow Cloning: 
    * When Reference Type has a reference type in it
    * copy the reference type and the original and copy will have the same reference to the inner reference type.
    * Better if dealing with shared data isn't an issue

* Deep Cloning:
    * When reference type in reference type object also is copied by implementing NSCopy
    * Expensive.

