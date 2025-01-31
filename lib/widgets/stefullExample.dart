import 'package:flutter/material.dart';

class UpdateState extends StatefulWidget {
  const UpdateState({Key? key}) : super(key: key);

  @override
  State<UpdateState> createState() => _UpdateState();
}

class _UpdateState extends State<UpdateState> {
  var count = 1;
  var noOfFav = 40;
  var isFavorite = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: <Widget>[
        Text(
          'Hey this is stateful widget',
          style: TextStyle(color: Colors.cyan),
        ),
        TextButton(
            onPressed: () {
              setState(() {
                count++;
              });
            },
            child: Text('Click Me')),
        Text('The count value is now ${count} 🙂'),
        Expanded(
            child: Row(
          spacing: 15,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            IconButton(
                onPressed: () {
                  setState(() {
                    isFavorite = !isFavorite;
                    isFavorite == true ? noOfFav++ : noOfFav--;
                  });
                },
                icon: isFavorite == true
                    ? Icon(
                        Icons.star,
                        color: Colors.red,
                        size: 28,
                      )
                    : Icon(
                        Icons.star_border,
                        color: Colors.red,
                        size: 28,
                      )),
            Text(
              '${noOfFav}',
              style: TextStyle(fontSize: 18),
            )
          ],
        )),
        Padding(
          padding: EdgeInsets.all(10),
          child: ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text('Back to previous')),
        )
      ],
    ));
  }
}
