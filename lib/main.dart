import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: HomePage(),
  ));
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int level = 0;

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
        child: FormID(level),
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            setState(() {
              level++;
            });
          },
          child: Icon(
            Icons.add,
          )),
    );
  }
}

class FormID extends StatelessWidget {
  const FormID(this.level);

  final int level;
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
          '$level',
          style: TextStyle(
            color: Colors.amberAccent[200],
            fontWeight: FontWeight.bold,
            fontSize: 28.0,
            letterSpacing: 2.0,
          ),
        ),
        SizedBox(height: 30.0),
        Row(
          children: [
            Icon(
              Icons.email,
              color: Colors.grey[400],
            ),
            SizedBox(width: 10.0),
            Text(
              'chun.li@street.fighter.com',
              style: TextStyle(
                  color: Colors.grey[400], fontSize: 18.0, letterSpacing: 1.0),
            )
          ],
        )
      ],
    );
  }
}
