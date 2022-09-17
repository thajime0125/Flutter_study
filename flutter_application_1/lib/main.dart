//import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/next_page.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends HookWidget {
  // const MyHomePage({Key? key}) : super(key: key);
  final items = List<String>.generate(10000, (i) => 'Item $i');
  @override
  Widget build(BuildContext context) {
    final counter = useState(0);
    String text = 'Next';
    return Scaffold(
      appBar: AppBar(
        title: const Text('hello world'),
      ),
      body: Container(
        width: double.infinity,
        child: GridView.count(
          crossAxisCount: 3,
          children: List.generate(100, (index) {
            return Column(
              children: [
                Expanded(
                  child: Image.asset('images/SOMAlogo.png'),
                ),
                Text('item$index'),
              ],
            );
          }),
        ),
      ),
      // floatingActionButton: FloatingActionButton(
      //   onPressed: () {
      //     counter.value++;
      //   },
      //   tooltip: 'Increment',
      //   child: const Icon(Icons.add),
      // ),
    );
  }
}





// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);

//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Demo',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       home: const MyHomePage(title: 'Flutter Demo Home Page'),
//     );
//   }
// }

// class MyHomePage extends StatefulWidget {
//   const MyHomePage({Key? key, required this.title}) : super(key: key);

//   final String title;

//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   int _counter = 0;

//   void _incrementCounter() {
//     setState(() {
//       _counter++;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Hajime APP'),
//         actions: const [
//           Icon(Icons.add),
//           Icon(Icons.share),
//         ],
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment:  MainAxisAlignment.center,
//           children: [
//             ElevatedButton(
//                 child: const Text('Next'),
//                 onPressed: () {
//                   Navigator.push(
//                     context,
//                     MaterialPageRoute(
//                       builder: (context) => NextPage('Hajime'),
//                     ),
//                   );
//                 }),
//           ],
//         ),
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: _incrementCounter,
//         tooltip: 'Increment',
//         child: const Icon(Icons.add),
//       ),
//     );
//   }
// }
