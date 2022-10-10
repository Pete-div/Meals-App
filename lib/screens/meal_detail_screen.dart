import 'package:flutter/material.dart';
import '../dummy_data.dart';

class MealDetailsScreen extends StatelessWidget {
  final Function unFavoritetoggle;
  final Function isMealFovrite;
  MealDetailsScreen(this.unFavoritetoggle, this.isMealFovrite);

  @override
  Widget build(BuildContext context) {
    final mealId = ModalRoute.of(context)!.settings.arguments as String;
    final selectedMeal = DUMMY_MEALS.firstWhere((meal) => meal.id == mealId);

    Widget buildSectionTitle(String text) {
      return Container(
        margin: EdgeInsets.all(20),
        child: Text(
          text,
          style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
        ),
      );
    }

    Widget buildContainer(Widget ch) {
      return Container(
          margin: EdgeInsets.all(10),
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(color: Colors.grey, width: 1),
              borderRadius: BorderRadius.circular(10)),
          height: 150,
          width: 300,
          child: ch);
    }

    return Scaffold(
      appBar: AppBar(
        title: Text(selectedMeal.title.toString()),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 300,
              width: double.infinity,
              child: Image.asset(
                selectedMeal.imageUrl,
                fit: BoxFit.cover,
              ),
            ),
            buildSectionTitle('Ingredient'),
            buildContainer(
              ListView.builder(
                itemBuilder: (ctx, index) => Card(
                  color: Colors.blue,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 10.0, vertical: 5),
                    child: Text(selectedMeal.ingredient[index]),
                  ),
                ),
                itemCount: selectedMeal.ingredient.length,
              ),
            ),
            buildSectionTitle("Steps"),
            buildContainer(ListView.builder(
              itemBuilder: (ctx, index) => Column(
                children: [
                  ListTile(
                    leading: CircleAvatar(child: Text('# ${index + 1}')),
                    title: Text(selectedMeal.step[index]),
                  ),
                  Divider(),
                ],
              ),
              itemCount: selectedMeal.step.length,
            )),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(isMealFovrite(mealId) ? Icons.star : Icons.star_border),
        onPressed: () => unFavoritetoggle(mealId),
        // child: Icon(Icons.delete),
        // onPressed: (){
        //   Navigator.of(context).pop(mealId);
        // },
      ),
    );
  }
}
