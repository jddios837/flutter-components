
import 'package:flutter/material.dart';

// import 'package:components/src/home_temp.dart';
import 'package:components/src/home_page.dart';

void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Componentes App',
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}