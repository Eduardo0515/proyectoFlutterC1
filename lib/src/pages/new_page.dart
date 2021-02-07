import 'package:flutter/material.dart';
import 'package:flutterapp2/src/pages/login.dart';

class NewPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: 
      Container( 
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image.asset(
                "assets/flutterImage.png",
                height: 200.0,
              ),
              Text("Flutter", style: TextStyle(fontSize: 40.0)),
              Padding(padding: EdgeInsets.all(10.00)),
              RaisedButton(
                child: Text("Navegar", style: TextStyle(color: Colors.white)),
                color: Colors.blueAccent,
                onPressed: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Login()),
                  );
                },
              )
            ]
          ),
        ),
      )
    );
  }
}