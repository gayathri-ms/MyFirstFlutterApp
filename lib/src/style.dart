import 'package:flutter/material.dart';

class Style extends StatelessWidget {
  final String arg;
  final String val;
  Style(this.val, this.arg);
  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Container(
        child: Text(
          "${val} : ",
          style: const TextStyle(
              // color: Color.fromARGB(255, 72, 98, 63),
              color: Colors.white,
              fontSize: 24,
              fontWeight: FontWeight.w300),
        ),
      ),
      Container(
          child: Text(
        arg,
        style: const TextStyle(
          // color: Color.fromARGB(255, 18, 50, 3),
          color: Colors.white,
          fontSize: 20,
        ),
      ))
    ]);
  }
}
