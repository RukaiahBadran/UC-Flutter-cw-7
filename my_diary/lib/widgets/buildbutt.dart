import 'package:flutter/material.dart';


Widget buildButton({required Color? color}) {
  return Container(
    height: 40,
    width: 40,
    decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: color,
        border: Border.all(color: Colors.black, width: 2)),
  );
}
