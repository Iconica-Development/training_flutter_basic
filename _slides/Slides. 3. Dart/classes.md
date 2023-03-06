# Classes in Dart

---
### Classes in Dart
- Every object is an instance of a class 
- all classes descend from Object
- mixin-based inheritance
    - a class body can be reused in multiple class hierarchies.

---
### Constructing objects
- calling the class as a function or using a named / factory constructor
- constructor names can be ClassName or ClassName.identifier

```dart
var jsonData = jsonDecode('{"x":1, "y":2}');
// Create a Point using Point().
var p1 = Point(2, 2);
// Create a Point using Point.fromJson().
var p2 = Point.fromJson(jsonData);
```

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
To create a compile-time constant using a constant constructor, use const:

```dart
var p = const ImmutablePoint(2, 2);
```

---
### Enums
Enums are constants with a internal unique index represented by an identifier.

By default enums are nothing more than a set of names. 
However, enhanced enums can be used to add logic and additional properties. 

```dart

enum WeekDay {
    monday(0, 'Droopy'),
    tuesday(1, 'Focus'),
    wednesday(2, 'Motivated'),
    thursday(3, 'Sleepy'),
    friday(4, 'Party'),
    saturday(5, 'Recharge'),
    sunday(6, 'Existential Dread');

    final int dayNumber;
    final String mood;

    WeekDay(
        this.dayNumber,
        this.mood,
    );
    
    int howLongUntilTheWeekend() {
        if (dayNumber < WeekDay.saturday.dayNumber) {
            return 5 - dayNumber;
        }
        return 0;
    }
}

```