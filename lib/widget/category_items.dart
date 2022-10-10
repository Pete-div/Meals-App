

import 'package:flutter/material.dart';


class CategoryItems extends StatelessWidget {
  final String id;
  final String title;
  final Color color;
  CategoryItems(this.color, this.title,this.id);

  void selectCategory(BuildContext ctx){
    Navigator.of(ctx).pushNamed( '/category-meals',arguments: {'id':id,'title':title});

  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ()=>selectCategory(context),
      splashColor: Colors.white,
      borderRadius: BorderRadius.circular(15),
      child: Container(
        padding: EdgeInsets.all(15),
        child: Text(title,style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
        decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: [color.withOpacity(0.7), color],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight),
              borderRadius: BorderRadius.circular(15)
        ),
      ),
    );
  }
}
