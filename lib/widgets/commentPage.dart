import 'package:first_flutter_project/widgets/stefullExample.dart';
import 'package:flutter/material.dart';

class CommentSection extends StatefulWidget {
  const CommentSection({Key? key}) : super(key: key);

  @override
  State<CommentSection> createState() => _CommentSectionState();
}

class _CommentSectionState extends State<CommentSection> {
  late String title;
  String text = 'Comments will be displayed here';
  List<String> commentList = [];
  final TextEditingController _textEditingController = TextEditingController();

  void _setText() {
    String newText = _textEditingController.text.trim();
    if (newText.isNotEmpty) {
      setState(() {
        commentList.add(newText);
        _textEditingController.clear();
      });
    }
  }

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
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  'User Comments on Post',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 22,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 200,
                  child: ListView(
                    children: commentList
                        .map((item) => Text(
                              item,
                              style:
                                  TextStyle(color: Colors.black, fontSize: 16),
                            ))
                        .toList(),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.only(left: 10, right: 10),
              margin: EdgeInsets.only(bottom: 40),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  TextFormField(
                    maxLines: 3,
                    decoration: InputDecoration(
                      label: Text('Enter your comment here'),
                      labelStyle: TextStyle(color: Colors.lightBlue),
                      focusedBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                              color: Colors.lightBlue, width: 2),
                          borderRadius: BorderRadius.circular(5)),
                      enabledBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                              color: Colors.lightBlue, width: 2),
                          borderRadius: BorderRadius.circular(5)),
                    ),
                    onChanged: (value) => title = value,
                    controller: _textEditingController,
                  ),
                  ElevatedButton(
                    style: ButtonStyle(
                        backgroundColor:
                            WidgetStatePropertyAll(Colors.lightBlue),
                        shape: WidgetStatePropertyAll(RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5)))),
                    onPressed: _setText,
                    child: Text(
                      'SUBMIT',
                      style: TextStyle(fontSize: 22, color: Colors.white),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(10),
                    child: Row(
                      spacing: 10,
                      children: <Widget>[
                        ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const UpdateState()));
                            },
                            child: Text('Update page Route')),
                        ElevatedButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            child: Text('Home Page'))
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
