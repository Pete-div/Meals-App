import 'package:flutter/material.dart';
import 'package:meals_app/dummy_data.dart';
import 'package:meals_app/screens/meal_detail_screen.dart';
import './screens/category_meal_screen.dart';
import './screens/category_screen.dart';
import './screens/category_meal_screen.dart';
import './screens/tab_screen.dart';
import './screens/filter_screen.dart';
import './models/meal.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp();

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Map<String, bool> _filters = {
    'glutan': false,
    'lactose': false,
    'vagan': false,
    'vegrtarians': false,
  };
  List<Meal> _availableMeals = DUMMY_MEALS;
  List <Meal> _isFavoriteMeals = [];

  void _saveFilters(Map<String, bool> filterData) {
    setState(() {
      _filters = filterData;
      _availableMeals = DUMMY_MEALS.where((meals) {
        if (_filters['glutan']! && !meals.isGlutanFree) {
          return false;
        }
        if (_filters['Vegan']! && !meals.isVagan) {
          return false;
        }
        if (_filters['vegrtarians']!  && !meals.isVefetarian) {
          return false;
        }
        if (_filters['lactose']! && !meals.isLactoseFree) {
          return false;
        }
        return true;
      }).toList();
    });
  }

  bool  isMealFavorite(String id){
    return _isFavoriteMeals.any((meal) => meal.id == id);
  }
  void _toggleFavorite(String mealId){
    final existingIndex =_isFavoriteMeals.indexWhere((meal)=> meal.id ==mealId);
    if(existingIndex >= 0){
      setState(() {
        _isFavoriteMeals.removeAt(existingIndex);
      });
    }else{
      setState(() {
        _isFavoriteMeals.add(DUMMY_MEALS.firstWhere((meal) => meal.id ==mealId));
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Meals',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // home: TabScreen(),
      initialRoute: "/",
      routes: {
        '/': (ctx) => TabScreen(_isFavoriteMeals),
        '/filter-category': (ctx) => FilterScreen(_filters,_saveFilters),
        '/categoryScreen': (ctx) => CategoryScreen(),
        '/category-meals': (ctx) => CategoryMealScreen(_availableMeals),
        '/meal-detail': (ctx) => MealDetailsScreen(_toggleFavorite,isMealFavorite)
      },
    );
  }
}
