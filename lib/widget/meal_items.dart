import 'package:flutter/material.dart';
import '../models/meal.dart';

class MealItems extends StatelessWidget {
  final String id;
  final String title;
  final String imageUrl;
  final int duration;
  final Complexity complexity;
  final Affordability affordability;
  // final Function deleteItems;
  MealItems(
      {
        required this.id,
        required this.imageUrl,
      required this.complexity,
      required this.affordability,
      required this.duration,
      // required this.deleteItems,
      required this.title});

      String get complexityText{
        switch(complexity){
          case Complexity.challenging:
          return 'challenging';
          case Complexity.hard:
          return 'hard';
        
          case Complexity.simple:
          return 'Simple';
    
          default:
          return 'Unlnow';
        }
      }


 String get AffordabilityText{
        switch(affordability){
          case Affordability.luxurious:
          return 'Luxurious';
          case Affordability.affordable:
          return 'Affordable';
        
          case Affordability.spricey:
          return 'Spricey';
    
          default:
          return 'Unknow';
        }
      }



  void selectMeal(BuildContext ctx) {
    Navigator.of(ctx).pushNamed('/meal-detail',arguments: id).then((result) {
      if(result != null){
        // deleteItems(result);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ()=> selectMeal(context),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        elevation: 4,
        margin: EdgeInsets.all(10),
        child: Column(
          children: [
            Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(15),
                    topRight: Radius.circular(15),
                  ),
                  child: Image.asset(
                    imageUrl,
                    height: 250,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                  bottom: 20,
                  right: 10,
                  child: Container(color: Colors.black54,
                  padding: EdgeInsets.symmetric(vertical: 10,horizontal: 12),
                    width:300,

                    child: Text(
                      title,
                      style: TextStyle(
                        fontSize: 26,
                        color: Colors.white,
                      ),
                      softWrap: true,
                      overflow: TextOverflow.fade,
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Icon(Icons.schedule),
                      SizedBox(width: 8,),
                      Text('$duration'),
                    ],
                  ),
                  Row(
                    children: [
                      Icon(Icons.work),
                      SizedBox(width: 8,),
                      Text(complexityText),
                    
                    ],
                  ),
                  Row(
                    children: [
                      Icon(Icons.monetization_on),
                      SizedBox(width: 8,),
                      Text(AffordabilityText),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
