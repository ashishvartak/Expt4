import 'package:flutter/material.dart';

//Example for explaining Layout using Stackview
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

// this function returns a stack widget
  Widget _buildStack() => Stack(
        alignment: const Alignment(0.6, 0.6),
        children: [
          Container(
            width: 150,
            height: 150,
            decoration:
                BoxDecoration(color: Colors.black45, shape: BoxShape.circle),
            child: Center(
              child: Text(
                'Mia B',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ),
          ),
        ],
      );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("IT Department"),
        ),
        body: Center(child: _buildStack()));
  }
}
