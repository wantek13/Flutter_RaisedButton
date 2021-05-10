import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'RaisedButton',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  String value1 = "Bonjour !";
  int nbr = 15;

  void onclick1(){
    setState(() {
      value1 = "sheeeeeh";
    });
  }

  void randomNumber(){
    var rnd = new Random();
    for (var i = 0; i < 10; i++) {
      setState(() {
        nbr = rnd.nextInt(100);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Salut c'est cool !"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget> [
          RaisedButton(
            child: Text('Appuyer ici pour commencer'),
            onPressed: () => onclick1(),
          ),

          Text(value1, style: TextStyle(color: Colors.green, fontSize: 20),),

          Divider(),

          RaisedButton(
              child: Text('générer un nombre'),
              onPressed: () => randomNumber(),
          ),

          Text("$nbr", style: TextStyle(color: Colors.red, fontSize: 30),),
        ],
      ),
    );
  }
}

// class MyHomePage extends StatefulWidget {
//   const MyHomePage({Key key}) : super(key: key);
//
//   @override
//   _MyHomePageState createState() => _MyHomePageState();
// }
//
// class _MyHomePageState extends State<MyHomePage> {
//
//   String value1 = 'premier bouton';
//   String value2 = 'Deuxième bouton';
//
//   void onclick1(){
//     setState(() {
//       value1 = 'click on first button validate';
//     });
//   }
//
//   void onclick2(String message){
//     setState(() {
//       value2 = message;
//     });
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('RaisedButton'),
//       ),
//       body: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: <Widget>[
//           RaisedButton(
//               child: Text('First button', style: TextStyle(color: Colors.green),),
//               onPressed: () => onclick1(),
//           ),
//
//           Text(value1, style: TextStyle(color: Colors.green, fontSize: 40),),
//
//           Divider(
//             height: 10,
//           ),
//
//           RaisedButton(
//               child: Text('Second button',
//                 style: TextStyle(
//                     color: Colors.red),
//               ),
//               onPressed: (){
//                 onclick2('click on second button validate');
//               },
//           ),
//
//           Text(value2, style: TextStyle(color: Colors.red, fontSize: 40),),
//
//         ],
//       ),
//     );
//   }
// }


