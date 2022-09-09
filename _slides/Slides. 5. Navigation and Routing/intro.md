# Navigation and Routing


---
### Navigation

Most apps contain several screens for displaying different types of information. For example, we might have a screen that shows products. Our users could then tap on a product to get more information about it on a screen.

Screens
- Android calls them Activities. 
- iOS calls them ViewControllers. 
- Flutter call them Widgets!

---
### Navigate between screens
Use a Navigator Widget

- Navigator.push shows a screen
- Navigator.pop returns to the last shown screen

---
### Navigator Push
Navigator Push
- Requires a Route, for instance MaterialPageRoute. 
- MaterialPageRoute transitions using a platform-specific animation.

```
// Within the `FirstScreen` Widget
onPressed: () {
  Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => SecondScreen()),
  );
}
```

---
### Navigator Pop
Navigator Pop returns to last screen
```
// Within the SecondScreen Widget
onPressed: () {
  Navigator.pop(context);
}
```


---
### Custom transitions in navigation
Example of a custom transition between pages
```
class HorizontalSlidingPageRoute<T> extends MaterialPageRoute<T> {
  HorizontalSlidingPageRoute({
    super.builder,
    super.settings,
    super.maintainState,
  });

  @override
  Widget buildTransitions(BuildContext context, Animation<double> animation,
    Animation<double> forwardAnimation, Widget child) {
    return SlideTransition(
      position: Tween( begin: const Offset(1.0, 0.0), end: const Offset(0.0, 0.0),
  ).animate(animation), child: child,  );
  }
}
```

---
<!-- .slide: data-background="url('images/demo.jpg')" --> 
<!-- .slide: class="lab" -->
## Demo time!
Demo. Routing

---
<!-- .slide: data-background="url('images/lab2.jpg')" --> 
<!-- .slide: class="lab" -->
## Lab time!


// https://flutter.io/cookbook/navigation/returning-data/


