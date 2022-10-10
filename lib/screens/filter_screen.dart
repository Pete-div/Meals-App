import 'package:flutter/material.dart';
import '../widget/drawer.dart';


class FilterScreen extends StatefulWidget {
  final Function saveHandler;
  
  final Map<String, bool> currentFilter;
  FilterScreen(this.currentFilter, this.saveHandler);

  @override
  State<FilterScreen> createState() => _FilterScreenState();
}

class _FilterScreenState extends State<FilterScreen> {
  bool _glutanFree = false;

  bool _vegetarianFree = false;

  bool _vagen = false;

  bool _lactoseFree = false;
  @override
  void initState() {
    _glutanFree = widget.currentFilter['glutan'] as bool;
    _vegetarianFree = widget.currentFilter['vegtarian'] as bool;

    _vagen = widget.currentFilter['vegen'] as bool;

    _lactoseFree = widget.currentFilter['lactose']as bool;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: MealsDrawer(),
        appBar: AppBar(
          actions: [
            IconButton(
              onPressed: () {
                final selectedFilters = {
                  'glutan': _glutanFree,
                  'lactose': _lactoseFree,
                  'vagan': _vagen,
                  'vegrtarians': _vegetarianFree,
                };

                widget.saveHandler(selectedFilters);
              },
              icon: Icon(Icons.save),
            )
          ],
          title: Text('Your Filter'),
        ),
        body: Column(
          children: [
            Container(
              padding: EdgeInsets.all(20),
              child: Text(
                'Adjust your meal selection',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.w700),
              ),
            ),
            Expanded(
                child: ListView(
              children: [
                SwitchListTile(
                    title: Text('glutan-free'),
                    subtitle: Text('Only glutan is free'),
                    value: _glutanFree,
                    onChanged: (newValue) {
                      setState(() {
                        _glutanFree = newValue;
                      });
                    }),
                SwitchListTile(
                    title: Text('vagen-free'),
                    subtitle: Text('Only vagen is free'),
                    value: _vagen,
                    onChanged: (newValue) {
                      setState(() {
                        _vagen = newValue;
                      });
                    }),
                SwitchListTile(
                    title: Text('vegetarian -free'),
                    subtitle: Text('Only Vegetarian is free'),
                    value: _vegetarianFree,
                    onChanged: (newValue) {
                      setState(() {
                        _vegetarianFree = newValue;
                      });
                    }),
                SwitchListTile(
                    title: Text('lactose-free'),
                    subtitle: Text('Only lactoseFree is free'),
                    value: _lactoseFree,
                    onChanged: (newValue) {
                      setState(() {
                        _lactoseFree = newValue;
                      });
                    }),
              ],
            ))
          ],
        ));
  }
}
