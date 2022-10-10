import 'package:flutter/material.dart';
import '../widget/meal_items.dart';
import '../models/meal.dart';

class CategoryMealScreen extends StatefulWidget {

  final List<Meal> availableMeals;

  CategoryMealScreen(this.availableMeals);

  @override
  State<CategoryMealScreen> createState() => _CategoryMealScreenState();
}

class _CategoryMealScreenState extends State<CategoryMealScreen> {
  String? categoryTitle;
  List<Meal>? displayedMeals;
  var _isLoadingDataInit = false;
  void _removeMeal(String mealId) {
    setState(() {
      displayedMeals!.removeWhere((meal) => meal.id == mealId);
    });
  }

  @override
  void didChangeDependencies() {
    if (!_isLoadingDataInit) {
      final routeArds =
          ModalRoute.of(context)!.settings.arguments as Map<String, String>;
      categoryTitle = routeArds['title'];
      final categoryId = routeArds['id'];
      displayedMeals = widget.availableMeals.where((meal) {
        return meal.categories.contains(categoryId);
      }).toList();
      _isLoadingDataInit = true;
    }

    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(categoryTitle.toString()),
      ),
      body: ListView.builder(
        itemBuilder: (ctx, index) {
          return MealItems(
              // deleteItems: _removeMeal,
              id: displayedMeals![index].id,
              imageUrl: displayedMeals![index].imageUrl,
              complexity: displayedMeals![index].complexity,
              affordability: displayedMeals![index].affordability,
              duration: displayedMeals![index].duration,
              title: displayedMeals![index].title);
        },
        itemCount: displayedMeals!.length,
      ),
    );
  }
}
