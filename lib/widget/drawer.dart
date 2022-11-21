import 'package:flutter/material.dart';

class MealsDrawer extends StatelessWidget {
 Widget BuildListTile( String text,VoidCallback tapHandler,IconData icon){
  return  ListTile(
            leading: Icon(
             icon,
              size: 26,
            ),
            title: Text(
              text,
              style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold),
            ),
            
            
            onTap: tapHandler,
          );
 }
  @override

  
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          Container(
            height: 120,
            width: double.infinity,
            padding: EdgeInsets.all(20),
            alignment: Alignment.centerLeft,
            color: Theme.of(context).accentColor,
            child: Text(
              'Cooking Up',
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.w900),
            ),
          ),
          SizedBox(
            height: 20,
          ),
         BuildListTile('Meals', (){
          Navigator.of(context).pushReplacementNamed('/');
         },  Icons.restaurant),
         BuildListTile('Filter', (){
          Navigator.pushReplacementNamed(context, '/filter-category');
         },  Icons.settings),
        ],
      ),
    );
  }
}
