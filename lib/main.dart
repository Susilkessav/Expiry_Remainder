import 'package:flutter/material.dart';
import 'package:gradient_app_bar/gradient_app_bar.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Woolha.com Flutter Tutorial',
      home: _ElevatedButtonExample(),
      theme: ThemeData(
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            primary: Colors.purple,
          ),
        ),
      ),
    );
  }
}

class _ElevatedButtonExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: GradientAppBar(
        title: Text('widget.title'),
        backgroundColorStart: Color.fromRGBO(178, 208, 248, 1.0),
        backgroundColorEnd: Color.fromRGBO(50, 82, 123, 0.5),
      ),
      body: Center(
        child: ElevatedButton(
          child: Text('.com'),
          onPressed: () {
            print('Pressed');
          },
        ),
      ),
    );
  }
}
