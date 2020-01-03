import 'package:components/src/utils/icon_string_util.dart';
import 'package:flutter/material.dart';

import 'package:components/src/providers/menu_provider.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Componentes')),
      body: _lista(),
    );
  }

  _lista() {

    // print(menuProvider.opciones);

    return FutureBuilder(
      future: menuProvider.cargarData(),
      initialData: [],
      builder: ( context, AsyncSnapshot<List<dynamic>> snapshot ) {
        return ListView(
          children: _listaItems(snapshot.data, context),
        );
      },
    );

    // return ListView(
    //   children: _listaItems(),
    // );
  }

  List<Widget> _listaItems( List<dynamic> data, BuildContext context) {

    final List<Widget> opciones = [];

    data.forEach((opt) {
      final widgetTemp = ListTile(
        title: Text( opt['texto'] ),
        leading: getIcon(opt['icon']),
        trailing: Icon( Icons.keyboard_arrow_right, color: Colors.blue ),
        onTap: () {
          
          Navigator.pushNamed(context, opt['ruta']);

          // manera de manejar rutas 
          // final route = MaterialPageRoute(
          //   builder: ( context ) => AlertPage()
          // );

          // Navigator.push(context, route);
        },
      );

      opciones..add(widgetTemp)
              ..add(Divider());
    });

    return opciones;

    // return [
    //   ListTile( title: Text('Hola Mundo')),
    //   Divider(),
    //   ListTile( title: Text('Hola Mundo')),
    //   Divider(),
    //   ListTile( title: Text('Hola Mundo')),
    //   Divider(),
    //   ListTile( title: Text('Hola Mundo')),
    // ];
  }
}
