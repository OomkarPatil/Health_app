import 'package:flutter/material.dart';

class EmotiesFaces extends StatelessWidget {

  final String emotiface;

  const EmotiesFaces({super.key, required this.emotiface,});

  @override
  Widget build(BuildContext context) {
    return
      Container(
        decoration:
        BoxDecoration(
            color: Colors.blue[500],
            borderRadius: BorderRadius.circular(10)
        ),
        padding: EdgeInsets.all(13),
        child: Center(
            child: Text(emotiface, style:TextStyle(fontSize: 30),)
        ),
      );
  }
}
