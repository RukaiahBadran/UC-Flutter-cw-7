import 'package:flutter/material.dart';
import '../widgets/buildbutt.dart';
import 'diary_screen.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final textController = TextEditingController();
  String text1 = "Hi";
  var _backgroundColor = Colors.white;
  @override
  void dispose() {
    textController.dispose();
    super.dispose();
  }

  void _setBackgroundColor(Color newColor) {
    if (newColor != _backgroundColor) {
      setState(() {
        _backgroundColor = newColor;
      });
    }
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('دفتر اليوميات'),
      ),
      backgroundColor: _backgroundColor,
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Text(
            'أختر لونك المفضل',
            style: TextStyle(fontSize: 36),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: () {
                  _setBackgroundColor(Colors.orange);
                },
                child: buildButton(color: Colors.orange),
              ),
              Spacer(),
              GestureDetector(
                onTap: () {
                  _setBackgroundColor(Colors.red);
                },
                child: buildButton(color: Colors.red),
              ),
              Spacer(),
              GestureDetector(
                onTap: () {
                  _setBackgroundColor(Colors.blue);
                },
                child: buildButton(color: Colors.blue),
              ),
              Spacer(),
              GestureDetector(
                onTap: () {
                  _setBackgroundColor(Colors.green);
                },
                child: buildButton(color: Colors.green),
              ),
            ],
          ),
          Text(
            'ماذا تريد ان تكتب؟',
            style: TextStyle(fontSize: 24),
          ),
          TextField(
            controller: textController,
            decoration: InputDecoration(
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(13))),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(
                builder: (context) {
                  return DiaryScreen(
                    text1: textController.text,
                    color1: _backgroundColor,
                  );
                },
              ));
            },
            child: Icon(Icons.add_circle_outline_sharp),
          ),
        ]),
      ),
    );
  }
}
