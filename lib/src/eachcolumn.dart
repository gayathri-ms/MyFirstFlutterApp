import 'package:flutter/material.dart';

class Eachcolumn extends StatelessWidget {
  final String name;
  final String imagepath;
  final String role;
  final String college;
  final String location;

  Eachcolumn(this.name, this.imagepath, this.role, this.college, this.location);

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
        child: new RaisedButton(
          onPressed: () {
            Navigator.of(context).pushNamed("/second", arguments: {
              "name": name,
              "image": imagepath,
              "role": role,
              "location": location,
              "college": college
            });
          },
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
                child: Image.asset(imagepath),
              ),
              Container(
                child: Text(name),
              )
            ],
          ),
        ));
  }
}
