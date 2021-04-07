import 'package:flutter/material.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        appBarTheme: AppBarTheme(color: Colors.greenAccent),
      ),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Profile UI'),
        ),
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  Colors.green[300],
                  Colors.green[50],
                ]),
          ),
          child: Column(
            children: [
              CircleAvatar(
                radius: 80,
                backgroundImage: AssetImage('images/me.png'),
              ),
              ListTile(
                title: Center(
                  child: Text(
                    'Anthony Garner',
                    style: TextStyle(fontSize: 20),
                  ),
                ),
                subtitle: Center(
                  child: Text('Sr. Web and Mobile Applications Engineer',
                      style: TextStyle(fontSize: 15)),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  RaisedButton(
                    onPressed: () {},
                    child: Text('Message'),
                  ),
                  RaisedButton(
                    onPressed: () {},
                    child: Text('Hire Me'),
                  ),
                ],
              ),
              ListTile(
                title: Text(
                  'SuperGeneric Apps',
                  style: TextStyle(fontSize: 20),
                ),
                subtitle: Text(
                  'Over 2 years as an Experienced Software developer and architect with a demonstrated history of working in the information technology and services industry. Skilled in .NET Framework(C#), ASPNET MVC, Web API, Entity Framework, SQL Server, PHP, Laravel Framework, MySQL, JavaScript, Angularjs, Angular, Java (Android), Swift (iOS), ML and Discreet Mathematics',
                  style: TextStyle(fontSize: 15),
                ),
              ),
            ],
          ),
        ),

        //
      ),
    );
  }
}
