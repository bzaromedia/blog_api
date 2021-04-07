import 'package:flutter/material.dart';

import 'about.dart';

class Home extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // ignore: todo
    // TODO: implement createState
    return _HomeState();
  }
}

class _HomeState extends State<Home> {
  var messageText = TextEditingController();
  //String showMessage = "";
  String title = "";
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          TextField(
            controller: messageText,
          ), // ignore: deprecated_member_use
          ElevatedButton(
            onPressed: () {
              setState(() {
                title = messageText.text;
              });
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return About(title);
              }));
            },
            child: Text("Go to About Screen"),
          ),
        ],
      ),
    );
  }
}
