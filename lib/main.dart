import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}



// List View.builder

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {

    var arrayofnames=['Usman' , "Furqan "," HAssn ", " Qazi","ahmad ", 'Sudais '];
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: Text(widget.title),
        ),
        body:ListView.builder(itemBuilder: (context, index) {


          return Text(arrayofnames[index], style: TextStyle(fontSize: 21,fontWeight: FontWeight.w500),);
        },
        itemCount:arrayofnames.length,
          // reverse: true,
          itemExtent: 100,

          scrollDirection: Axis.horizontal,
        )

    );
  }
}


//
// List view 
//
// class _MyHomePageState extends State<MyHomePage> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(
//           backgroundColor: Theme.of(context).colorScheme.inversePrimary,
//           title: Text(widget.title),
//         ),
//         body:ListView(scrollDirection:Axis.horizontal,
//           reverse: true,
//
//
//           children: [
//             Padding(
//               padding: const EdgeInsets.all(8.0),
//               child: Text('One  ',style: TextStyle(fontWeight: FontWeight.w500,fontSize: 21),),
//             ),
//             Padding(
//               padding: const EdgeInsets.all(8.0),
//               child: Text('Two   ',style: TextStyle(fontWeight: FontWeight.w500,fontSize: 21),),
//             ),
//             Padding(
//               padding: const EdgeInsets.all(8.0),
//               child: Text('Three  ',style: TextStyle(fontWeight: FontWeight.w500,fontSize: 21),),
//             ),
//             Padding(
//               padding: const EdgeInsets.all(8.0),
//               child: Text('Four  ',style: TextStyle(fontWeight: FontWeight.w500,fontSize: 21),),
//             ),
//             Padding(
//               padding: const EdgeInsets.all(8.0),
//               child: Text('Five   ',style: TextStyle(fontWeight: FontWeight.w500,fontSize: 21),),
//             ),
//             Padding(
//               padding: const EdgeInsets.all(8.0),
//               child: Text('Six  ',style: TextStyle(fontWeight: FontWeight.w500,fontSize: 21),),
//             ),
//           ],
//         )
//
//     );
//   }
// }
//




// // scroll view
// class _MyHomePageState extends State<MyHomePage> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Theme.of(context).colorScheme.inversePrimary,
//         title: Text(widget.title),
//       ),
//       body:Padding(
//         padding: const EdgeInsets.all(8.0),
//         child: SingleChildScrollView(
//           child: Column(
//             children: [
//               Container(
//                   width: 200,
//                   height: 200,
//                   color: Colors.orange,
//                   margin: EdgeInsets.only(bottom: 10)
//               ),
//               Container(
//                   width: 200,
//                   height: 200,
//                   color: Colors.red,
//                   margin: EdgeInsets.only(bottom: 10)
//               ),
//               Container(
//                   width: 200,
//                   height: 200,
//                   color: Colors.yellow,
//                   margin: EdgeInsets.only(bottom: 10)
//               ),
//               Container(
//                   width: 200,
//                   height: 200,
//                   color: Colors.pink,
//                   margin: EdgeInsets.only(bottom: 10)
//               ),
//               Container(
//                   width: 200,
//                   height: 200,
//                   color: Colors.blue,
//                   margin: EdgeInsets.only(bottom: 10)
//               ),
//               Container(
//                   width: 200,
//                   height: 200,
//                   color: Colors.black,
//                   margin: EdgeInsets.only(bottom: 10)
//               ),
//             ],
//           ),
//         ),
//       )
//
//     );
//   }
// }
//
