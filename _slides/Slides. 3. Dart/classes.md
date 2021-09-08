# Classes in Dart

---
### Classes in Dart
- Every object is an instance of a class 
- all classes descend from Object
- mixin-based inheritance
    - a class body can be reused in multiple class hierarchies.

---
### Constructing objects
- use the new keyword with a constructor for a class 
- constructor names can be ClassName or ClassName.identifier

```dart
var jsonData = jsonDecode('{"x":1, "y":2}');
// Create a Point using Point().
var p1 = new Point(2, 2);
// Create a Point using Point.fromJson().
var p2 = new Point.fromJson(jsonData);
```

*Dart 2: You can omit the new before the constructor*

---
### Objects and members
- objects have members consisting of functions and data (methods and instance variables, respectively)
- use . to call members and access fields.
- use ?. instead of . to avoid exception when leftmost operand is null:
- use !. instead of . to force mark leftmost operand to non-null

```dart
// If p is non-null, set its y value to 4.
p?.y = 4;
```

---
### Constant constructors
To create a compile-time constant using a constant constructor, use const instead of new:

```dart
var p = const ImmutablePoint(2, 2);
```