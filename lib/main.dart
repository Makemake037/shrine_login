import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Shrine",
      theme: ThemeData(primarySwatch: Colors.blue),
      home: LoginPage(),
    );
  }
}

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Shrine'),
      ),
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.symmetric(horizontal: 24.0),
          children: <Widget>[
            SizedBox(height: 34.0),
            Column(
              children: <Widget>[
                Image.asset('images/shrine.jpeg'),
                SizedBox(height: 16.0),
                Text("SHRINE"),
              ],
            ),
            SizedBox(height: 45.0),
            //USERNAME
            TextField(
              decoration: InputDecoration(
                filled: true,
                labelText: 'Username',
              ),
            ),
            //SPACE
            SizedBox(
              height: 12.0,
            ),
            //PASSWORD
            TextField(
              decoration: InputDecoration(
                filled: true,
                labelText: 'Password',
              ),
              obscureText: true,
            ),

            ButtonBar(
              children: <Widget>[
                FlatButton(
                  child: Text("CANCEL"),
                  onPressed: () {},
                ),
              ],
            ),

            RaisedButton(
              child: Text("NEXT"),
              onPressed: () {
                Navigator.push(context, Page());
              },
            ),
          ],
        ),
      ),
    );
  }
}

class Page extends MaterialPageRoute<Null> {
  Page()
      : super(builder: (BuildContext ctx) {
          return Scaffold(
            appBar: AppBar(
              title: Text(
                "Welcome to shrine",
                style: TextStyle(
                  fontSize: 30.0,
                  color: Colors.green[900],
                ),
              ),
              backgroundColor: Theme.of(ctx).canvasColor,
              elevation: 1.0,
            ),
            body: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Center(
                  child: Text(
                    "you logged in",
                    style: TextStyle(
                      fontSize: 50.0,
                      color: Colors.blue[900],
                    ),
                  ),
                ),
                RaisedButton(
              child: Text("LogOut"),
              onPressed: (null) 
            ),
              ],
            ),
          );
        });
}
