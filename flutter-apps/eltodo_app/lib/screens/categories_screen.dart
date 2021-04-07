import 'package:flutter/material.dart';

import 'home_screen.dart';

class CategoriesScreen extends StatefulWidget {
  @override
  _CategoriesScreenState createState() => _CategoriesScreenState();
}

class _CategoriesScreenState extends State<CategoriesScreen> {
  var _categoryName = TextEditingController();
  var _categoryDescription = TextEditingController();
  _showFormInDialog(BuildContext context) {
    return showDialog(
        context: context,
        barrierDismissible: true,
        builder: (param) {
          return AlertDialog(
            actions: [
              FlatButton(
                onPressed: () {},
                child: Text('Cancel'),
              ),
              FlatButton(
                onPressed: () {
                  print('Category Name : ${_categoryName.text}');
                  print('Category Description : ${_categoryDescription.text}');
                },
                child: Text('Save'),
              ),
            ],
            title: Text('Category form'),
            content: SingleChildScrollView(
              child: Column(
                children: [
                  TextField(
                    controller: _categoryName,
                    decoration: InputDecoration(
                        labelText: 'category name',
                        hintText: 'Write category name'),
                  ),
                  TextField(
                    controller: _categoryDescription,
                    decoration: InputDecoration(
                        labelText: 'category description',
                        hintText: 'Write category description'),
                  ),
                ],
              ),
            ),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: RaisedButton(
          elevation: 0.0,
          color: Colors.red,
          child: Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () {
            Navigator.of(context).push(
                new MaterialPageRoute(builder: (context) => new HomeScreen()));
          },
        ),
        title: Text('El Todo'),
      ),
      body: Center(child: Text('Welcome to categories screen!')),
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            _showFormInDialog(context);
          },
          child: Icon(Icons.add)),
    );
  }
}
