
import 'package:flutter/material.dart';

// import 'package:components/src/home_temp.dart';
import 'package:components/src/pages/alert_page.dart';
import 'package:components/src/routes/routes.dart';

void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Componentes App',
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      // home: HomePage(),
      routes: getApplicationRoutes(),
      onGenerateRoute: ( RouteSettings settings){
        print('Ruta llamada: ${ settings.name }');

        return MaterialPageRoute(
          builder: ( BuildContext context ) => AlertPage()
        );
      },
    );
  }
}