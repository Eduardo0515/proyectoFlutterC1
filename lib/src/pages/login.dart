
import 'package:flutter/material.dart';
import 'package:flutterapp2/src/pages/list_user.dart';
import 'package:flutterapp2/src/pages/new_page.dart';

class Login extends StatefulWidget {
  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  String user = "";
  String pass = "";
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Login'),
      ),
      body:
      Column(children: [
        Container(
        padding: EdgeInsets.symmetric(horizontal: 45),
        color: Color.fromRGBO(249, 246, 239, 1.0),
        child: Column(
          children: [
            SizedBox(
              height: 80.0,
            ),
            _userTextField(),
            SizedBox(
              height: 25.0,
            ),
            _userPassword(),
            SizedBox(
              height: 50,
            ),
            _buttonNavegar(
              (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ListUser()),
                  );
                },
                50.0, 
                15.0, 
                "Navegar",
                Colors.blueAccent
            )
          ],
        ),
      ),
      Container(
        padding: EdgeInsets.only(right: 180.0, top: 130.0),
        child: _buttonNavegar(
              (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => NewPage()),
                  );
                }, 
                15.0, 
                15.0, 
                "Volver",
                Colors.redAccent
            ),
      )
      ],)
    );
  }

  _userTextField() {
    return Container(
      child: TextField(
        keyboardType: TextInputType.emailAddress,
        decoration: InputDecoration(
            icon: Icon(Icons.person),
            hintText: 'Usuario',
            labelText: 'Usuario'),
        onChanged: (String str) {
          user = str;
        },
        onSubmitted: (String str) {
          user = str;
        },
      ),
    );
  }

  _userPassword() {
    return Container(
      child: TextField(
        keyboardType: TextInputType.emailAddress,
        obscureText: true,
        decoration: InputDecoration(
            icon: Icon(Icons.lock),
            hintText: 'Contraseña',
            labelText: 'Contraseña'),
        onChanged: (String str) {
          pass = str;
        },
        onSubmitted: (String str) {
          pass = str;
        },
      ),
    );
  }

  _buttonNavegar(funcion, height, width, text, color) {
    return RaisedButton(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: height, vertical: width),
        child: Text(text, style: TextStyle(color: Colors.white),),
      ),
      elevation: 30,
      color: color,
      onPressed: funcion,
    );
  }

}