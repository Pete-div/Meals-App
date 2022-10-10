import 'package:flutter/material.dart';
import 'package:meals_app/widget/category_items.dart';
import '../dummy_data.dart';


class CategoryScreen extends StatelessWidget {
  const CategoryScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return
       Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView(
          gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 200,
              childAspectRatio: 3 / 2,
              mainAxisSpacing: 10,
              crossAxisSpacing: 20),
          children: DUMMY_CATEGORIES.map((catData){
            return CategoryItems(catData.color, catData.title,catData.id);
          }).toList(),
        ),
      );
  }
}
