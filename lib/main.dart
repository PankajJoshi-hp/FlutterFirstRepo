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
    var size = MediaQuery.of(context).size;
    var width = size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        // backgroundColor: Colors.transparent,
        backgroundColor: Colors.lightBlue,
        title: const Text('This is First App'),
      ),
      body: Column(children: <Widget>[
        Image.asset(
          'assets/images/lakeImg.jpg',
        ),
        Row(children: <Widget>[
          Container(
            height: 100,
            width: 2 * width / 3,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  height: 50,
                  padding: EdgeInsets.only(left: 8, top: 20),
                  // alignment: Alignment.center,
                  child: Text(
                    'Oeschinen Lake Campground',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                  height: 50,
                  padding: EdgeInsets.only(left: 8),
                  child: Text(
                    'Kendersteg, Switzerland',
                    style: TextStyle(color: Colors.grey, fontSize: 16),
                  ),
                ),
              ],
            ),
          ),
          Container(
              // color: Colors.lightBlue,
              width: width / 3,
              height: 100,
              padding: EdgeInsets.only(right: 25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Icon(
                    Icons.star,
                    color: Colors.red,
                    size: 28.0,
                    semanticLabel: 'Text to announce in accessibility modes',
                  ),
                  Text(
                    '41',
                    style: TextStyle(fontSize: 20, color: Colors.black),
                  )
                ],
              )),
        ]),
        Container(
          padding: EdgeInsets.only(left: 15, right: 15),
          height: 100,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Icon(
                    Icons.call,
                    color: Colors.blue,
                    size: 28.0,
                    semanticLabel: 'Text to announce in accessibility modes',
                  ),
                  Text(
                    'Call',
                    style: TextStyle(fontSize: 20, color: Colors.black),
                  )
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Icon(
                    Icons.navigation,
                    color: Colors.blue,
                    size: 28.0,
                    semanticLabel: 'Text to announce in accessibility modes',
                  ),
                  Text(
                    'Route',
                    style: TextStyle(fontSize: 20, color: Colors.black),
                  )
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Icon(
                    Icons.share,
                    color: Colors.blue,
                    size: 28.0,
                    semanticLabel: 'Text to announce in accessibility modes',
                  ),
                  Text(
                    'Share',
                    style: TextStyle(fontSize: 20, color: Colors.black),
                  )
                ],
              ),
            ],
          ),
        ),
        Container(
          padding: EdgeInsets.only(left: 8, right: 8),
          child: Text(
            'Lake Oeschinen lies at the foot of the Bluemlisalp in the Bernes Alps. Situated 1,578 meters above the sea level, it is one of the larger Alpine lakes. A gondola ride from Kandersteg, followed by a half-hour walk through pastures and pine forest, leads you to the lake, which warms to 20 degree celcius in the summer. Activities enjoyed here include rowing, and riding the summer toboggan run.',
            style: TextStyle(color: Colors.black),
          ),
        )
      ]),
    );
  }
}
