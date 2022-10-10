import 'package:flutter/material.dart';
import './models/category.dart';
import './models/meal.dart';

const DUMMY_CATEGORIES = const [
  Category(id: 'c1', title: 'Italian', color: Colors.purple),
  Category(id: "c2", title: 'Yoruba', color: Colors.brown),
  Category(id: "c3", title: 'Igbo', color: Colors.yellow),
  Category(id: "c4", title: 'Hausa', color: Colors.blue),
  Category(id: "c5", title: 'America', color: Colors.orange),
  Category(id: "c6", title: 'French', color: Colors.green),
  Category(id: "c7", title: 'Russia', color: Colors.black26),
  Category(id: "c8", title: 'Afgham', color: Colors.brown),
  Category(id: "c9", title: 'Ghana jollof', color: Colors.red),
  Category(id: "c10", title: 'Osun', color: Colors.brown)
];

const DUMMY_MEALS = const [
  Meal(
      id: 'm1',
      imageUrl: "images/m1.jpg",
      categories: ['c1', 'c2', 'c8'],
      title: 'America',
      duration: 2,
      affordability: Affordability.luxurious,
      complexity: Complexity.hard,
      ingredient: ['water', 'fire-wood', 'Salt', 'Vegetable Oil'],
      isGlutanFree: true,
      isLactoseFree: false,
      isVagan: true,
      isVefetarian: false,
      step: ['Put the fire', 'Put water in the Pot']),
  Meal(
      id: 'm2',
      imageUrl: "images/m2.jpg",
      categories: ['c8', 'c5', 'c3'],
      title: 'Yoruba',
      duration: 5,
      affordability: Affordability.affordable,
      complexity: Complexity.simple,
      ingredient: [
        'yam',
        'motal',
        'water',
        'fire-wood',
        'pestle',
        'Salt',
        'Vegetable Oil'
      ],
      isGlutanFree: true,
      isLactoseFree: true,
      isVagan: true,
      isVefetarian: true,
      step: [
        'peal the Yam',
        'cut into sizes',
        'Get strong people for pounding' 'Put the fire',
        'Put water in the Pot'
      ]),
  Meal(
      id: 'm3',
      imageUrl: "images/m3.jpg",
      categories: ['c4', 'c6', 'c7'],
      title: 'Italian',
      duration: 3,
      affordability: Affordability.spricey,
      complexity: Complexity.challenging,
      ingredient: [
        'spicity',
        'Italian rice',
        'water',
        'fire-wood',
        'live pepper',
        'Salt',
        'Vegetable Oil'
      ],
      isGlutanFree: false,
      isLactoseFree: false,
      isVagan: false,
      isVefetarian: true,
      step: [
        'wash the rice',
        'slice the pepper',
        'Get pressure gas' 'Put the fire',
        'Put water in the Pot'
      ]),
        Meal(
      id: 'm4',
      imageUrl: "images/m4.jpg",
      categories: ['c1', 'c2', 'c4'],
      title: 'French',
      duration: 1,
      affordability: Affordability.affordable,
      complexity: Complexity.simple,
      ingredient: [
        'Beans',
        'Plantain',
        'water',
        'fire-wood',
        'Sweet potato',
        'Salt',
        'Palm Oil'
      ],
      isGlutanFree: false,
      isLactoseFree: true,
      isVagan: true,
      isVefetarian: false,
      step: [
        'hand pick the beans',
        'cut onions',
        'fire on water' ,
        'Put the fire',
        'Put water in the Pot'
      ]),
        Meal(
      id: 'm5',
      imageUrl: "images/m5.jpg",
      categories: ['c5', 'c6', 'c2'],
      title: 'Russian',
      duration: 34,
      affordability: Affordability.spricey,
      complexity: Complexity.challenging,
      ingredient: [
        'Garri',
        'water',
        'Turning stick',

        'if you like it salty',
        
        
      ],
      isGlutanFree: false,
      isLactoseFree: true,
      isVagan: true,
      isVefetarian: true,
      step: [
        'water, 100 degree?',
        'pour garri',
        'Get pressure gas' 
        ,'turn the eba with turning stick',
        'Put water in the Pot'
      ]),
      Meal(
      id: 'm6',
      imageUrl: "images/m6.jpg",
      categories: ['c1', 'c2', 'c8'],
      title: 'America',
      duration: 2,
      affordability: Affordability.luxurious,
      complexity: Complexity.hard,
      ingredient: ['water', 'fire-wood', 'Salt', 'Vegetable Oil'],
      isGlutanFree: true,
      isLactoseFree: false,
      isVagan: true,
      isVefetarian: false,
      step: ['Put the fire', 'Put water in the Pot']),
];
