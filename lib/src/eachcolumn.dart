import 'package:flutter/material.dart';

class Eachcolumn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
        child: new RaisedButton(
          onPressed: () {
            Navigator.of(context).pushNamed("/second");
          },
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
                child: Image.asset("assets/images/image1.jpg"),
              ),
              Container(
                child: Text("data2"),
              )
            ],
          ),
        ));
  }
}
