# What is flutter

---
### What is Flutter

- A SDK that makes building high-performing, modern and beautiful apps easy
- Works for Android, iOS, MacOS, Windows, Linux and Fuchsia (Beta)
- An open-source toolkit, developed by Google*
- 1000+ contributions from the open source community

https://www.linkedin.com/pulse/cross-platform-mobile-app-development-flutter-xamarin-korhan-bircan

---
### Who is Flutter for?
- *Designers* converge on a brand-driven experience on any platform, regardless of the specific design language
- *Prototypers* enjoy a high-fidelity and fast way to build working prototypes. 
- *Developers* benefit from fantastic developer tools, an easy-to-use language, a rich set of widgets and great IDE support. Flutter frees up valuable time for working on features and delightful experiences.

These features can be used separately or all together

---
### Flutter focus
For this training we focus on
- Developer Experience
- Performance

Flutter has a design oriented development flow


---
### What you see here
<div style="text-align:top;display:flex;justify-content:center;">
<img style="height:60vh;margin-left:20px;" src="images/layout.png">
</div>

---
### Could be explained as
<div style="text-align:top;display:flex;justify-content:center;">
<img style="height:60vh;margin-left:20px;" src="images/layout2.png">
</div>

---
### Practise
Diagram the Layout

- Look for rows and columns
- Is there a grid?
- Any overlapping elements?
- Do we need tabs?
- Padding, alignment or borders needed?

---
### Practise #1
<div>
<img style="height:60vh;margin-left:20px;" src="images/appshell-layout-example.png">
</div>

---
### Practise #2
<div>
<img style="height:60vh;margin-left:20px;" src="images/uo-layout-example.png">
</div>

---
### Design from bottom up
<div style="text-align:top;display:inline-block;">
<img style="height:20vh;margin-left:20px;" src="images/layout3.png">
<img style="height:20vh;margin-left:20px;" src="images/layout4.png">
</div>

---
### HTML/CSS Analogs in Flutter
<div style="text-align:top;display:flex;justify-content:center;">
<img style="height:60vh;margin-left:20px;" src="images/htmlflut.png">
</div>
* A whole section in docs 



---
### Flutter tooling
```
$ flutter doctor
```
Checks your environment and displays a report to the terminal window
```
$ flutter upgrade
```
Updates both the Flutter SDK and your packages

---
### Flutter tooling
pubspec file
```
pubspec.yaml
name: flutter_project
description: An amazing Flutter project using Firebase Auth
dependencies:
  flutter:
    sdk: flutter
  firebase_auth: "^0.2.5"
```

---
### Flutter commands
Other flutter commands
```
$ flutter pub get
```
Checks your environment and displays a report to the terminal window
```
$ flutter pub upgrade
```
Will retrieve the highest available version of the package
```
$ flutter format
```
Automatically formats your code according to the Flutter-style
```
$ flutter analyze
```
Analyzes your code and help you find possible mistakes


---
### Hot Reload
Injecting updated source code files into the running Dart VM

**Stateful**: App state is retained after a reload. 

Quickly iterate on a screen deeply nested in your app

---
<!-- .slide: data-background="url('images/demo.jpg')" --> 
<!-- .slide: class="lab" -->
> ## Demo time!
> Demo 2. Hot Reload

---
### Performance
Flutter is optimized for Performance
- Flutter comes with it’s own widgets and renderer
- No support library needed. Not depended on OEM updates.
- Thanks to composition, only redraw what changed
- Bit blitting moved items that didn’t change from Cache

---
### Reactive Frameworks on the Web
<img style="height:50vh" src="/images/webframework.png">

The virtual DOM is immutable and needs to be rebuilt every frame - so 60 times per second when targeting 60fps

---
### Reactive Frameworks on Mobile
<img style="height:50vh" src="/images/mobileframework.png">

---
### Flutter framework
<img style="height:50vh" src="/images/flutterframework.png">

The app being in control of the renderer gives it more potential for controlling animations

---
<!-- .slide: data-background="url('images/lab2.jpg')" --> 
<!-- .slide: class="lab" -->
> ## Lab time!
