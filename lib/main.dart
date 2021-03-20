import 'package:flutter/material.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('sign in'),
        flexibleSpace: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: <Color>[
                    Color.fromRGBO(42,105,173,1.0),
                    Color.fromRGBO(41,115,183,1.0),
                    Color.fromRGBO(38,137,194,1.0),
                    Color.fromRGBO(35,164,206,1.0),
                    Color.fromRGBO(32,189,219,1.0),
                    Color.fromRGBO(32,213,234,1.0),
                    Color.fromRGBO(28,235,245,1.0),
                    Color.fromRGBO(27,255,254,1.0)

                  ])
          ),
        ),
      ),
      body: Center(
        child: Container(
          child: Center(
            child: Text(
              'Hello Gradient!',
              style: TextStyle(
                fontSize: 48.0,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
