import 'package:flutter/material.dart';

//Example for explaining Layout using ListView
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'FAMT',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  // function returning List view widget
  Widget _buildList() => ListView(
        // name is a listTile widget which is defined below
        children: [
          name('james', 'thomas'),
          name('Ajay', 'kumar'),
          name('Arun', 'das'),
          name('Roxie', 'St'),
          name('Stanlee', 'jr'),
          name('AMC', 'hales'),
          Divider(),
          name('Monty', "Chopra"),
          name('Emmy', 'Ave'),
          name('Chaitanya', ' kumar'),
          name('Rio', 'St'),
        ],
      );

// name is a function returning ListTile widget
  ListTile name(String firstName, String lastName) => ListTile(
        title: Text(firstName,
            style: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 20,
            )),
        subtitle: Text(lastName),
        leading: Icon(
          Icons.arrow_back_ios,
          color: Colors.blue[500],
        ),
      );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("IT Department"),
        ),
        body: Center(child: _buildList()));
  }
}
