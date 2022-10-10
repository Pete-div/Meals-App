import 'package:flutter/material.dart';
import '../models/meal.dart';
import '../widget/meal_items.dart';

class FavoriteScreen extends StatelessWidget {
  final List<Meal> favoriteMeal;
  FavoriteScreen(this.favoriteMeal);
  @override
  Widget build(BuildContext context) {
    if (favoriteMeal.isEmpty) {
      return Center(
          child:
              Text('You have no Items as Favorite yet...! Start adding some.'));
    } else {
      return ListView.builder(
        itemBuilder: (ctx, index) {
          return MealItems(
              id: favoriteMeal[index].id,
              imageUrl: favoriteMeal[index].imageUrl,
              complexity: favoriteMeal[index].complexity,
              affordability: favoriteMeal[index].affordability,
              duration: favoriteMeal[index].duration,
              title: favoriteMeal[index].title);
        },
        itemCount: favoriteMeal.length,
      );
    }
  }
}
