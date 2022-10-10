import 'package:flutter/rendering.dart';

enum Complexity{
  simple,
  challenging,
  hard

}
enum Affordability{
  affordable,spricey,luxurious

}

class Meal {

  final String id;
  final List<String> categories;
  final String title;
  final String imageUrl;
  final List<String> ingredient;
  final List<String> step;
  final int duration;
  final Complexity complexity;
  final Affordability affordability;
  final bool isGlutanFree;
  final bool isLactoseFree;
  final bool isVagan;
  final bool isVefetarian;
  const Meal({required this.id,required this.imageUrl,required this.categories,
  required this.title,required this.duration,required this.affordability,
  required this.complexity,required this.ingredient,required this.isGlutanFree,required this.isLactoseFree,
  required this.isVagan,required this.isVefetarian,required this.step});
}
