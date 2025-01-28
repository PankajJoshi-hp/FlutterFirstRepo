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
        body: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              child: Text('This is text inside row'),
            )
          ],
        ));
  }
}
