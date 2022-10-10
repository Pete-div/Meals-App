import 'package:flutter/material.dart';
import '../screens/category_screen.dart';
import '../screens/favorite_screen.dart';
import '../widget/drawer.dart';
import '../models/meal.dart';

class TabScreen extends StatefulWidget {
final List<Meal> fovoriteMeals;
TabScreen(this.fovoriteMeals);

  @override
  State<TabScreen> createState() => _TabScreenState();
}

class _TabScreenState extends State<TabScreen> {
 List<Map<String, Object>>? pages;
  int _pageIndex = 0;

@override
  void initState() {
    pages = [
    {'page': CategoryScreen(), 'title': 'Category'},
    {'page': FavoriteScreen(widget.fovoriteMeals), 'title': 'Your Favorite'}
  ];
    super.initState();
  }

  void _selectPage(int index) {
    setState(() {
      _pageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(pages![_pageIndex]['title'] as String),
      ),
      drawer: MealsDrawer(),
      bottomNavigationBar: BottomNavigationBar(
          onTap: _selectPage,
          unselectedItemColor: Colors.blue,
          selectedItemColor: Colors.brown,
          currentIndex: _pageIndex,
          type: BottomNavigationBarType.shifting,
          backgroundColor: Colors.amberAccent,
          items: [
            BottomNavigationBarItem(
                backgroundColor: Colors.amberAccent,
                icon: Icon(Icons.category),
                label: 'Categories'),
            BottomNavigationBarItem(
                backgroundColor: Colors.amberAccent,
                icon: Icon(Icons.star),
                label: 'Favorite'),
          ]),
      body: pages![_pageIndex]['page'] as Widget,
    );
    // return DefaultTabController(
    //   length: 2,
    //   child: Scaffold(
    //       appBar: AppBar(
    //         title: Text('Meals'),
    //         bottom: TabBar(
    //           tabs: [
    //             Tab(
    //               icon: Icon(Icons.category),
    //               text: 'Categories',
    //             ),
    //             Tab(
    //               icon: Icon(Icons.star),
    //               text: 'Favorite',
    //             ),
    //           ],
    //         ),
    //       ),
    //       body: TabBarView(children: [
    //         CategoryScreen(),
    //         FavoriteScreen(),
    //       ])),
    // );
  }
}

