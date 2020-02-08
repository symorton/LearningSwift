# Intro

[This Tutorial](https://app.pluralsight.com/player?course=objective-c-swift-developers&author=david-nutter&name=deefe45a-6d78-47ea-9a1d-c2c8e1c6e3f9&clip=0&mode=live)

## Why Objective-C?
* Swift compatibility
* Available libraries and frameworks
* Job opps
* Knowledge sharpens developer skills

* Only One NameSpace for files in ObjC

## Basic Syntax
* Objective-C is a superset of C

```
SomeType = myVariable = someValue;
```
(ground breaking)
* all statements must end in semi-colon

### Primitive Data Types
```
// Integer types
int anInt = 7; // At least 32-bit
char aChar = 'D'; //8-bit single-character storage

// Float types
float aFloat = 1.323; //32-bit
double aDouble = 1.324354; // 64-bit
```
### Modifiers
For C:
```
signed int offset = -5; //signed by default
unsigned int count = 20; //only positive numbers allowed

// Storage size
short int aShort = 2; //2-byte integers
long int aLong = 15615L //up to 64-bit int
long long int aLongLong = 12335343234LL; //64-bit int
long double aLongDouble = 3.234324L; //128-bit double
```

For Objective-C
```
// int (32-bit) or long (64-bit)
NSInteger aSignedInteger = -7;

// unsigned int (32-bit) or unsigned long (64-bit)
NSUInteger anUnsignedInteger = 3;

// float (32-bit) or double (64-bit)
CGFloat aFloat = 1.21e9;

// YES equivalent to true and 1; NO equivalent to false and 0
BOOL aBoolean = YES;
```

### Derived Types
* C-style Array
  * Contiguous memory containing values of the same type
  * Multi-dimensional arrays supported
  * Objective-C arrays object-based, less restrictive

```
Type myArray[N];
Type myArray[] = {e1, e2, ..., eN}
Type my2DArray[M][N];
```

* struct
  * User-defined data type that combines data of different types

```
struct CGPoint {
    CGFloat x;
    CGFloat y;
}
...later...
CGPoint point; //x and y are both zero
point.x = 3;
point.y = 5;
CGFloat x = point.x;
```

* Pointer
  * holds a memory address for a declared type
  * Default value is NULL (0x00)

```
Type *variableName;
```

  * Working with Pointers

```
int someVariable = 3;
int *pInt = &someValue; //address of someValue
int another = *pInt; //get value from address
pInt = NULL
```

* Enum

```
enum Shape { Circle, Square, Triangle }
typedef enum Shape Shape; //ease-of-use declaring variables

//PREFERRED USAGE of ENUMS
typedef NS_ENUM(NSUInteger, Shape) {
    Circle=1, //sequential from 0 unless specified
    Square,
    Triangle
};
```

Shape myShape = Circle; // 1

# Control Flows

## If statements
* Classic
* Switch statements classic as well
  * Switch statements on Ints only
  * break needed as well, but fallthrough supported

## For Loops
* just like Java.
* Can use break to get out.
* While loop classic

## Objects in ObjC
* id Type refers to an object of Any Class Type
  * An object is an instance of a class

```
// A point to an instance of a class.
typedef struct obj_object *id;
id anObject;
```

## NSString is a String object
* C-pointer * references the object
* @ signifies Objective-C
* Double-quotation marks

```
NSString *string = @"Hello, World!";
```

# Class Definitions

* Interfaces 
  * Declared in header file (.h)
  * Defines Interactive state and behavior

* Implementation
  * Separate implementation file (.m)
  * Provides internal behavior
  * Manages internal state that is not exposed through interface.

## Class Interfaces

* Declaring a Class Interface
  * All classes must inherit from a single parent class
  * Root class in Objective-C is called NSObject

```
@interface SomeClass: ParentClass
  // properties and methods declared here
@end
```

* Properties
```
@property int age;
@property (nonatomic, getter=isValid) BOOL valid;
@property (class) NSString *name;
@property (readonly) id someObject;
```

* Property Attributes
  * Access
    * readwrite
    * readonly
    * class
    * getter=methodName
    * setter=methodName
  * Atomicity
    * atomic
      * access guaranteed uninterrupted by another thread (default)
    * nonatomic
      * provides faster (interruptible) access operations
    * Storage
      * strong (default)
      * weak
      * unsafe_unretained (deprecated)
      * copy
      * assign

* Declaring a method
```
- (void)methodName:(NSString *)salutation; //returns nothing
- (int)methodName; //returns int
```
  * "-" instance methods
  * "+" class methods, static

* Nullability
  * Working with nullability is safe in ObjC
  * Objects declared but not initialized default to nil
  * Nil pointers safely ignore message calls
  * Nullability qualifiers provide context in interface (NS_ASSUME_NONNULL_BEGIN)

## Class Implementation
* "#" Preprocessor directive
* "#import" copies contents of declared header file during compilation
* @implementation SomeClass
* @end

```
@implementation SomeClass
  - (void)doSomething {/*code*/}

  @propery Type myProperty;
@end
```

* Custom Synthesized Instance Variables
  * @synthesize to rename instance variables


* Message Sending
```
[someObject doSomething];
```

* Dot Syntax
```
person.firstName = @"Dave";
```

* self is same as swift

## Object Lifecycle
* Allocation - memory assigned dynamically
* Initialization - customizable
* Reference counting - retain strong reference
* Release - zero strong references
* Deallocation - cleanup

```
// equivalent to alloc + init
MyObject *anotherObject = [MyObject new];

//object literals
NSString *greeting = @"hi";
```

### Automatic Reference Counting (ARC)
* Compiler handles object retain and release messages automatically


# Collections

## NSArray
* Like Swift's array
  * Objects not required to be instances of same class
* NSArray Indexing
```
NSArray <NSString *> *colors = @[@"red", @"green", @"blue"];
NSString *redColor = [colors objectAtIndex: 0];
NSString *greenColor = colors[1]
NSString *blueColor = colors[3]; //NSRangeException
```

## NSSet
* Unordered group of distinct objects
* More performant than arrays

## NSDictionary
* Stores objects in key-value pairs
* Keys can be any type of object that supports NSCopying protocol
* Use Strings as Keys

```
// Literal syntax
NSDictionary <NSString *, NSString *> *animalNoises = @{
    @"dog": @"woof",
    @"cat": @"meow",
};
```

* for-in Fast Enumeration supported

* NSLog is a thing




