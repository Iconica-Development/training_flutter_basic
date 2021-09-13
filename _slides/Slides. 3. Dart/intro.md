# What is Dart

---
### Dart has

- Sound type system
- Tree Shaking
- Rich core libraries
- Multi-gen, lockless GC
- Easy to learn

---
### Dart offers

- Single codebase for Android and iOS
- Rapid development cycles
- Great tooling
- Standard libraries maintained by Google

---
### Dart is for
Dart is for
- Web
- Mobile
- Server

---
### Dart characteristics
- Object Oriented
- Optionaly typed
- JIT and AOT
- Fast performance and allocation


---
### A simple Dart program

A simple main.dart file:

```dart
// Define a function.
printInteger(int aNumber) {
  print('The number is $aNumber.'); // Print to console.
}

// This is where the app starts executing.
main() {
  var number = 42; // Declare and initialize a variable.
  printInteger(number); // Call a function.
}
```

Execute this with 'dart main.dart'

---
### More dart
In Dart:
- Everything is an object, and every object is an instance of a class. 
  - Even numbers, functions, and null are objects. 
- All objects inherit from the Object class.

---
### More dart
Dart
- is strongly typed, type annotations are optional because Dart can infer types. 
- supports generic types, like List<int>
- supports top-level functions (such as main()), as well as functions tied to a class or object (static and instance methods, respectively).
- supports top-level variables, as well as variables tied to a class or object (static and instance variables). 

- (Unlike Java) Dart doesn’t have the keywords public, protected, and private. If an identifier starts with an underscore (_), it’s private to its library. For details, see Libraries and visibility.


---
### Dart variables
Type inference
```dart
var name = 'Bob';
```
The type of the name variable is inferred to be String,but you can change that type by specifying it. Alternative:
```dart
dynamic name = 'Bob';
```
The type of the name variable is dynamic

---
### Default values

Uninitialized variables have an initial value of null. Even variables with numeric types.

int lineCount;
assert(lineCount == null);

Since dart 2.12, variables cannot be null unless they are explicitly marked as nullable.

```dart
int lineCount; // not allowed
int? lineCountNullable; // default null

lineCount = null; //not allowed
```

---
### Final and const
- Final variable can be set only once
- Const variable is a compile-time constant
  - implicitly final

```dart
final name = 'Bob'; // Without a type annotation
// name = 'Alice';  // Uncommenting this causes an error
final String nickname = 'Bobby';

const bar = 1000000; // Unit of pressure (dynes/cm2)
const double atm = 1.01325 * bar; // Standard atmosphere
```

Since dart 2.12, final variables that are non-nullable have to be instantiated when defined or provided by the constructor.

A new keyword 'late' has been added to allow initialization of a final non-nullable field.
```dart
late final int lineCount; // this is not yet instantiated

print(lineCount) // not allowed, as linecount is not initialized. 

lineCount = 1; //allowed, as it is the first initialization.
lineCount = 2; //not allowed, as lineCount is final.
```

---
### Const values
You can also use it to create constant values
```dart
// Note: [] creates an empty list.
// const [] creates an empty, immutable list (EIL).
var foo = const []; // foo is currently an EIL.
final bar = const []; // bar will always be an EIL.
const baz = const []; // baz is a compile-time constant EIL.
```

// You can change the value of a non-final, non-const variable,
// even if it used to have a const value.
foo = [];

// You can't change the value of a final or const variable.
// bar = []; // Unhandled exception.
// baz = []; // Unhandled exception.
---
###

---
### Types in dart
The Dart language has special support for:

- numbers -> int, double
- strings
- booleans
- lists (also known as arrays)
- maps
- runes (for expressing Unicode characters in a string)
- symbols
- functions

---
### Strings in Dart 
You can put the value of an expression inside a string ```${expression}```. 

 If the expression is an identifier, you can skip the {}. 
 
 To get the string corresponding to an object, Dart calls the object’s toString() method.

---
### Strings in Dart
Another way to create a multi-line string: use a triple quote with either single or double quotation marks:
```dart
var s1 = '''
You can create
multi-line strings like this one.
''';
var s2 = """This is also a
multi-line string.""";
```

---
### Raw Strings
String by prefixing it with r
```dart
var s = r"In a raw string, even \n isn't special.";
```

---
### Lists in strings
- Lists use zero-based indexing
```dart
var list = [1, 2, 3];
assert(list.length == 3);
assert(list[1] == 2);

list[1] = 1;
assert(list[1] == 1);
```

---
### Const Lists
To create a list that’s a compile-time constant:
```dart
var constantList = const [1, 2, 3];
// constantList[1] = 1; // Uncommenting this causes an error.
```

---
### Maps
- An object that associates keys and values
- Keys and values can be any type of object.
- Each key occurs only once, but you can use the same value multiple times.

---
### Maps
```dart
var gifts = {
  // Key:    Value
  'first': 'partridge',
  'second': 'turtledoves',
  'fifth': 'golden rings'
}; //  Map<String, String>

var nobleGases = {
  2: 'helium',
  10: 'neon',
  18: 'argon',
}; // Map<int, String>
```

---
### Storing and getting values
Add a new key-value pair:

```dart
var gifts = {'first': 'partridge'};
gifts['fourth'] = 'calling birds'; // Add a key-value pair
```

Retrieve a value from a map:
```dart
var gifts = {'first': 'partridge'};
assert(gifts['first'] == 'partridge');
assert(gifts['fifth'] == null);
```

---
### Constant maps
To create a map that’s a compile-time constant, add const:

```dart
final constantMap = const {
  2: 'helium',
  10: 'neon',
  18: 'argon',
};
```

---
### Runes
- Runes are the UTF-32 code points of a string
- To express a Unicode code point
  - \uXXXX, where XXXX is a 4-digit hexidecimal value
  
- For example, the heart character (♥) is \u2665.
- To specify other than 4 hex digits, place the value in curly brackets. 
  - the laughing emoji (😆) is \u{1f600}

---
### Runes
- The String class has properties to extract rune information. 
  - The codeUnitAt and codeUnit properties return 16-bit code units. 
  - The runes property to get the runes of a string

```dart
var clapping = `\u{1f44f}`;
print(clapping);
print(clapping.codeUnits); 
print(clapping.runes.toList());

Runes input = new Runes('\u2665 \u{1f605}');
print(new String.fromCharCodes(input));
```

---
### Symbols
A Symbol object represents an operator or identifier declared in a Dart program. 
  - Minification changes identifier names but not identifier symbols.
Symbols are written as:
  - #radix
  - #bar

Symbol literals are compile-time constants.

---
### Functions
- functions are objects and have a type -> Function

```dart
bool isNoble(int atomicNumber) {
  return _nobleGases[atomicNumber] != null;
}
```
Types can be omitted
```dart
isNoble(atomicNumber) {
  return _nobleGases[atomicNumber] != null;
}
```

---
### Functions
For functions that contain just one expression:
```dart
bool isNoble(int atomicNumber) => _nobleGases[atomicNumber] != null;
```
The => expr syntax is a shorthand for { return expr; }

*Only an expression —not a statement— can appear between the arrow (=>) and the semicolon (;)*

---
### Optional named parameters
When calling a function, you can specify named parameters using paramName: value. For example:
```dart
enableFlags(bold: true, hidden: false);
```

When defining a function, use {param1, param2, …} to specify named parameters:
```dart
/// Sets the [bold] and [hidden] flags ...
void enableFlags({bool bold, bool hidden}) {
  // ...
}
```

---
### Optional positional parameters
Wrapping parameters in [] marks them optional positional:
```dart
String say(String from, String msg, [String device]) {
  var result = '$from says $msg';
  if (device != null) {
    result = '$result with a $device';
  }
  return result;
}
```

Here’s an example of calling this function without the optional parameter:
```
assert(say('Bob', 'Howdy') == 'Bob says Howdy');
```
---
### Default parameter values
Default parameter values
- can be used for named and positional parameters 
- must be compile-time constants 

If no default value is provided, the default value is null

```
/// Sets the [bold] and [hidden] flags ...
void enableFlags({bool bold = false, bool hidden = false}) {
  // ...
}
// bold will be true; hidden will be false.
enableFlags(bold: true);
```

---
### Main function
Every app must have a top-level main() function, which serves as the entrypoint to the app. 

The main() function returns void and has an optional List<String> parameter for arguments.

```
void main() {
  querySelector('#sample_text_id')
    ..text = 'Click me!'
    ..onClick.listen(reverseText);
}
```
 *The .. is called a cascade. With cascades, you can perform multiple operations on the members of a single object*

---
### Anonymous functions
- Nameless function / Anonymous function / Lambda / Closure

```
var list = ['apples', 'bananas', 'oranges'];
list.forEach((item) {
  print('${list.indexOf(item)}: $item');
});
```
*note the difference in syntax*

---
### Specific Dart operators
- ..: Cascade operator, later more
- as:	Typecast
- is:	True if the object has the specified type
- is!:	False if the object has the specified type

---
### Specific Dart operators
To assign only if the assigned-to variable is null, use the ??= operator.
```dart
// Assign value to a
a = value;
// Assign value to b if b is null; otherwise, b stays the same
b ??= value;
```

---
### Cascades
Allow you to make a sequence of operations on the same object

```dart
final addressBook = (new AddressBookBuilder()
      ..name = 'jenny'
      ..email = 'jenny@example.com'
      ..phone = (new PhoneNumberBuilder()
            ..number = '415-555-0100'
            ..label = 'home')
          .build())
    .build();
```

The code that follows the .. operates on this selector object, ignoring subsequent values that might be returned.

*Strictly speaking, the “double dot” notation for cascades is not an operator. It’s just part of the Dart syntax*

---
> ## Demo time!
> Demo 2. Hot Reload
<!-- .slide: data-background="url('images/demo.jpg')" --> 
<!-- .slide: class="lab" -->

---
<!-- .slide: data-background="url('images/lab2.jpg')" --> 
<!-- .slide: class="lab" -->
> ## Lab time!
