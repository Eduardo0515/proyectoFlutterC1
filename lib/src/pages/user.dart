import 'package:flutter/material.dart';
import 'package:flutterapp2/src/pages/new_page.dart';

class User extends StatelessWidget {
  final String userName;

  User({Key key, @required this.userName}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Usuario"),
        centerTitle: true,
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.settings_backup_restore_outlined),
            tooltip: "Inicio", 
            onPressed: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => NewPage()),
              );
            })
        ],
      ),
      body: Padding(
        padding: EdgeInsets.only(top: 200.0),
        child: Center(
          child: Column(
            children: <Widget>[Card(
              color: Colors.red[500],
              child: new Container(
                padding: const EdgeInsets.symmetric(vertical: 30.0, horizontal: 100.0),
                child: Column(
                  children: <Widget>[
                    Text(userName, style: TextStyle(fontSize: 40.0, color: Colors.white)), 
                    Icon(Icons.person_pin, size: 40.0, color: Colors.white,)
                    ],
                ),
              )
            ),
          ]),
        ),
      ),
    );
  }
}