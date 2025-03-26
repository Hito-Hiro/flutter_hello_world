import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {  //Inicia la app
  runApp(MyApp());
}

class MyApp extends StatelessWidget { //Configura la app
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => MyAppState(),            //Se crea el estado global de la app
      child: MaterialApp(                //Define la configuración global
        title: 'Namer App',
        theme: ThemeData(
          useMaterial3: true,
        ),
        home: MyHomePage(), //Página de inicio
      ),
    );
  }
}

class MyAppState extends ChangeNotifier {
  // Sirve para guardar datos y actualizar la interfaz
}

class MyHomePage extends StatelessWidget {  //Define la pantalla principal de la app
  @override
  Widget build(BuildContext context) {
    return Scaffold( //Contenedor que muestra la estructura básica de Flutter
      appBar: AppBar(
        title: Text("Welcome to Flutter"), //Titulo en la parte superior
      ),
      body: Center(
        child: Text(
          "Hello World",
          style: TextStyle(fontSize: 24), // Ajusta el tamaño del texto
        ),
      ),
    );
  }
}
