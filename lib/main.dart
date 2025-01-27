import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme:
          ThemeData(brightness: Brightness.dark, primaryColor: Colors.blueGrey),
      home: const ChildApp(),
    );
  }
}

class ChildApp extends StatelessWidget {
  const ChildApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.redAccent,
      appBar: AppBar(
        // backgroundColor: Colors.transparent,
        backgroundColor: Colors.lightGreen,
        title: const Text('This is First App'),
      ),
      // body: Container(
      //   alignment: AlignmentDirectional.center,
      //   child: Text(
      //     'This is the body of my first app',
      //     style: TextStyle(fontSize: 24),
      //   ),
      // ),
      // body: Row(
      //   mainAxisAlignment: MainAxisAlignment.center,
      //   children: <Widget>[
      //     Text('Hey'),
      //     Text('This is text inside row'),
      //   ],
      // ),
      // body: Column(
      //   mainAxisAlignment: MainAxisAlignment.center,
      //   children: <Widget>[
      //     Center(
      //       child: Text('Hey'),
      //     ),
      //     Text('This is text inside row'),
      //   ],
      // ),
      // body: Center(
      //     child: Column(
      //   children: <Widget>[
      //     Container(
      //       color: Colors.blue,
      //       height: 100,
      //       child: Center(
      //         child: Text(
      //           'First widget',
      //           style: TextStyle(
      //             color: Colors.white,
      //           ),
      //         ),
      //       ),
      //     ),
      //     Expanded(
      //       child: Container(
      //         color: Colors.amber,
      //         // width: 200,
      //         child: Center(
      //           child: Text(
      //             'Second widget',
      //             style: TextStyle(
      //               color: Colors.white,
      //             ),
      //           ),
      //         ),
      //       ),
      //     ),
      //     Container(
      //       color: Colors.orange,
      //       height: 100,
      //       child: Center(
      //         child: Text(
      //           'Third widget',
      //           style: TextStyle(
      //             color: Colors.white,
      //           ),
      //         ),
      //       ),
      //     ),
      //   ],
      // )),
      //   body: Center(
      //       child: SizedBox(
      //     width: 200.0,
      //     height: 300.0,
      //     child: Card(
      //         color: Colors.cyan,
      //         child: Center(
      //           child: Text(
      //             'Hello this is Sizebox',
      //             style: TextStyle(fontSize: 24),
      //             textAlign: TextAlign.center,
      //           ),
      //         )),
      //   )),
      body: Stack(
        children: <Widget>[
          Center(
            child: Container(
              width: 200,
              height: 200,
              color: Colors.amber,
            ),
          ),
          Center(
            child: Container(
              width: 160,
              height: 160,
              color: Colors.blue,
            ),
          ),
          Center(
            child: Container(
              width: 120,
              height: 120,
              color: Colors.red,
            ),
          ),
        ],
      ),
    );
  }
}
