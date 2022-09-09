# Lists, Grids, more...

---
### Lists, Grids, more...
- Lists
    - ListView and ListTile widgets
- Grids
    - GridView 
- Tabbar
    - DefaultTabBarController
    - TabBar with tabs
    - TabBarView
- BottomNavigationBar
    - BottomNavigationBarItem

---
### Basic Listview
```
ListView(
  children: <Widget>[
    ListTile(
      leading: Icon(Icons.map),
      title: Text('Map'),
    ),
    ListTile(
      leading: Icon(Icons.photo_album),
      title: Text('Album'),
    ),
    ....
  ],
);
```

---
### Basic Listview
- Each Item as a Widget!
- ListView.builder

```
ListView.builder(
  itemCount: items.length,
  itemBuilder: (context, index) {
    return ListTile(
      title: Text('${items[index]}'),
    );
  },
);
```

### Basic ListView
- Different items in the list
```
final items = List<ListItem>.generate(
  1200,
  (i) => i % 6 == 0
      ? HeadingItem("Heading $i")
      : MessageItem("Sender $i", "Message body $i"),
);
```

---
### Gridview
Gridview display data in a grid
```
GridView.count(
  crossAxisCount: 2,
  children: List.generate(100, (index) {
    return Center(
      child: Text(
        'Item $index',
        style: Theme.of(context).textTheme.headline,
      ),
    );
  }),
);
```

---
### TabBar
Displays tabs where each item represents a page
Steps:
- Create a TabController
- Create the tabs
- Create content for each tab

---
### TabBar

```
DefaultTabController(
  length: 3,
  child: Scaffold(
    appBar: AppBar(
      bottom: TabBar(
        tabs: [
          Tab(icon: Icon(Icons.directions_car)),
          Tab(icon: Icon(Icons.directions_transit)),
          Tab(icon: Icon(Icons.directions_bike)),
        ],
      ),
    ),
  ),
);
```
---
### TabBar
Create content for each tab

Note: Order is important and must correspond to the order of the tabs in the  TabBar!

```
body: TabBarView(
  children: [
    Icon(Icons.directions_car),
    Icon(Icons.directions_transit),
    Icon(Icons.directions_bike),
  ],
);
```

---
<!-- .slide: data-background="url('images/demo.jpg')" --> 
<!-- .slide: class="lab" -->
## Demo time!
Demo. TabBar

---
<!-- .slide: data-background="url('images/lab2.jpg')" --> 
<!-- .slide: class="lab" -->
## Lab time!
