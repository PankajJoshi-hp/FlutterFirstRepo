import 'package:flutter/material.dart';

class CommentSection extends StatefulWidget {
  const CommentSection({Key? key}) : super(key: key);

  @override
  State<CommentSection> createState() => _CommentSectionState();
}

class _CommentSectionState extends State<CommentSection> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.lightBlue,
        title: const Text('Activity Handles'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        spacing: 10,
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(10),
            child: Text(
              'Lake Oeschinen lies at the foot of the Bluemlisalp in the Bernes Alps. Situated 1,578 meters above the sea level, it is one of the larger Alpine lakes. A gondola ride from Kandersteg, followed by a half-hour walk through pastures and pine forest, leads you to the lake, which warms to 20 degree celcius in the summer. Activities enjoyed here include rowing, and riding the summer toboggan run.',
              style: TextStyle(color: Colors.black),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 10),
            child: Text(
              'User Comments on Post',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 22,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Expanded(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              TextField(
                decoration: InputDecoration(
                    label: Text('data'), enabledBorder: OutlineInputBorder()),
              ),
              ElevatedButton(
                  style: ButtonStyle(
                      backgroundColor: WidgetStatePropertyAll(Colors.lightBlue),
                      shape: WidgetStatePropertyAll(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5)))),
                  onPressed: () {},
                  child: Text(
                    'SUBMIT',
                    style: TextStyle(fontSize: 22, color: Colors.white),
                  )),
            ],
          )),
        ],
      ),
    );
  }
}
