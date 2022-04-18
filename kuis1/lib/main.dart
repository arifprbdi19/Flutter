import 'package:flutter/material.dart';
import 'package:kuis1/home_page.dart';
import 'home_page.dart';

void main() {
  runApp(
    new MaterialApp(
      home: new Home(),
      debugShowCheckedModeBanner: false,
      routes: <String, WidgetBuilder>{
        '/page1' : (BuildContext context) => new Home(),
      },
    ),
  );
}
@override
Widget build(BuildContext context) {
  return MaterialApp(
    debugShowCheckedModeBanner: false,
    home: const HomePage(),
  );
}
class Home extends StatelessWidget {
  String teks='';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Text('Data Profile Mahasiswa'),
        centerTitle: true,
        backgroundColor: Colors.green,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            new Container(
              child: Image.asset('images/Logo.png',
                fit: BoxFit.fitWidth,
              ),
            ),
            new Container(
              padding: new  EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: new Column(
                children: <Widget>[
                  new TextField(
                    decoration: new InputDecoration(
                      hintText: 'password admin',
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 10, right: 10, bottom: 20),
              child: RaisedButton(
                onPressed: () {
                  var route = new MaterialPageRoute(builder: (context) => HomePage(),
                  );
                  Navigator.of(context).push(route);

                },
                padding: EdgeInsets.all(10.0),
                color: Colors.green,
                textColor: Colors.white,
                child: Text(
                  'LOGIN',
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
