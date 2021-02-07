import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: Login(),
    );
  }
}

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
        backgroundColor: Color.fromRGBO(240, 94, 100, 1.0),
        centerTitle: true,
        title: Text('AppRest'),
      ),
      body: Container(
        color: Color.fromRGBO(249, 246, 239, 1.0),
        child: Column(
          children: [
            SizedBox(
              height: 100.0,
            ),
            _userTextField(),
            SizedBox(
              height: 15.0,
            ),
            _userPassword(),
            SizedBox(
              height: 25,
            ),
            _bottonLogin()
          ],
        ),
      ),
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

  _bottonLogin() {
    return RaisedButton(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 50, vertical: 15),
        child: Text('Iniciar sesión'),
      ),
      elevation: 10,
      color: Color.fromRGBO(42, 200, 194, 10),
      onPressed: () {
        Fluttertoast.showToast(
            msg: 'Usuario: $user \nContraseña: $pass',
            toastLength: Toast.LENGTH_SHORT,
            gravity: ToastGravity.BOTTOM,
            timeInSecForIos: 1,
            backgroundColor: Colors.grey,
            textColor: Colors.white,
            fontSize: 16.0);
      },
    );
  }
}