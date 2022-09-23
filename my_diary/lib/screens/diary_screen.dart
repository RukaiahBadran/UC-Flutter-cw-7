import 'package:flutter/material.dart';

class DiaryScreen extends StatelessWidget {
  String text1;
  var color1;
  DiaryScreen({Key? key, required this.text1, required this.color1}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(''),
      ),
      body: Center(
        child: Text(
          text1,
          style: TextStyle(fontSize: 24),
        ),
      ),
      backgroundColor: color1,
    );
  }
}
