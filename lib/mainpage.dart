import 'package:flutter/material.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget{      //Puedes configurar toda la aplicación aquí
  const MyApp({super.key});

  @override
  Widget build(BuildContext context){
     return MaterialApp(
      theme: ThemeData(                   //Theme Data sirve para modificar los estilos de la app
        
        colorSchemeSeed: Colors.cyan,     //Este indica los colores que tendrán los botones, los inconos y la navbar
        
        useMaterial3: true,               //Contiene el material para cambiar los estilos
      ),
      home: const Mainpage(),
    );
  }
}

class Mainpage extends StatefulWidget{
  const Mainpage({super.key});

  @override
  State<Mainpage> createState()=>_MainpageState();
}


class _MainpageState extends State<Mainpage>{

  int count = 0;

  @override
  Widget build(BuildContext context){
    return Scaffold(                          //Esta es la base para la app

      appBar: AppBar(title: Text('Flutter App', style: TextStyle(color: Colors.white),),
      backgroundColor: const Color.fromARGB(255, 102, 198, 210),),         //Este sería el Navbar

      body: Center(                                   //Este sería el contenedor principal
        
        child: Column(                        //Alinea el contenido de forma vertical
          children: [
            Text('Hello World', style: TextStyle(fontSize: 24),),

            Row(                             //Alinea el contenido de forma horizontal
              children: [
                Text('Este botón ha sido presionado: ', style: TextStyle(fontSize: 18),),
                Text('$count veces', style: TextStyle(fontSize: 18),)],
            ),

            Stack(                  //Sirve para uperponer widgets
              alignment: Alignment.bottomCenter,
              children: <Widget>[

                Container(          //Esto es un contenedor
                  color: Colors.blue,
                  width: 400,
                  height: 200,
                ),

                Container(
                  padding: const EdgeInsets.all(1),
                  child: const Text('Práctica de superposición', 
                  style: TextStyle(color: Colors.white, fontSize: 20),),
                ),
              ],
            ),
          ],
        ),
      ),

      floatingActionButton: FloatingActionButton(onPressed: (){     //Esto sería un botón
        setState(() {
          count++;
        });
        print('El nuevo valor del contador es $count');
      },  
      child: const Icon(Icons.add),
      ),
    );
  }
}