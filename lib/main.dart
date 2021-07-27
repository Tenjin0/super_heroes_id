import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        title: Text('Super heroes ID Card'),
        centerTitle: true,
        backgroundColor: Colors.grey[800],
        actions: [],
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(30, 40, 30, 0),
        child: FormID(),
      ),
    );
  }
}

class FormID extends StatefulWidget {
  const FormID({Key? key}) : super(key: key);

  @override
  _FormIDState createState() => _FormIDState();
}

class _FormIDState extends State<FormID> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Center(
          child: CircleAvatar(
            radius: 40.0,
            backgroundImage: AssetImage('images/thumb.jpg'),
          ),
        ),
        Divider(
          height: 60.0,
        ),
        Text(
          'NAME',
          style: TextStyle(
            color: Colors.grey,
            letterSpacing: 2.0,
          ),
        ),
        Text(
          'Chun-Li',
          style: TextStyle(
              color: Colors.amberAccent[200],
              fontWeight: FontWeight.bold,
              fontSize: 28.0,
              letterSpacing: 2.0),
        ),
        SizedBox(height: 30.0),
        Text(
          'HOMETOWN',
          style: TextStyle(
            color: Colors.grey,
            letterSpacing: 2.0,
          ),
        ),
        Text(
          'Beijing, China',
          style: TextStyle(
            color: Colors.amberAccent[200],
            fontWeight: FontWeight.bold,
            fontSize: 28.0,
            letterSpacing: 2.0,
          ),
        ),
        SizedBox(height: 30.0),
        Text(
          'CURRENT LEVEL',
          style: TextStyle(
            color: Colors.grey,
            letterSpacing: 2.0,
          ),
        ),
        Text(
          '8',
          style: TextStyle(
            color: Colors.amberAccent[200],
            fontWeight: FontWeight.bold,
            fontSize: 28.0,
            letterSpacing: 2.0,
          ),
        ),
        SizedBox(height: 30.0),
      ],
    );
  }
}
