import 'package:flutter/material.dart';
import 'package:flutterapp2/src/pages/login.dart';
import 'package:flutterapp2/src/pages/user.dart';

class ListUser extends StatelessWidget{
  final List<String> users = <String>['José', 'Diana', 'Luis', 'Carlos', 'Martín', 'Antonio', 
  'Luisa', 'Eduardo', 'Jimena', 'Pedro', 'Arturo', 'Vicente', 'Patricia', 'Nestor', 'Pablo',
  'Sofía', 'Jesús', 'Liliana', 'Alejandro', 'Nallely'];
  final List<int> colorCodes = <int>[600, 400, 600, 400, 600, 400, 600, 400, 600, 400,
    600, 400, 600, 400, 600, 400, 600, 400, 600, 400];
  bool color = true;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("Usuarios"),
        centerTitle: true,
      ),
      body: Container(
        child: ListView.builder(
          padding: const EdgeInsets.all(20),
          itemCount: users.length,
          itemBuilder: (BuildContext context, int index) {
            return Container(
              margin: EdgeInsets.all(3.0),
              height: 40,
              color: Colors.red[colorCodes[index]],
              child: Center(
                child: TextButton(
                  onPressed: () { 
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => User(userName: users[index],),
                      ),
                    );
                   },
                  child: Text('${users[index]}', style: TextStyle(color: Colors.white, fontSize: 17.0),))
              ),
            );
          }
        ),
      )
      
    );
  }
}