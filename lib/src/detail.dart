import 'package:flutter/material.dart';

class Detail extends StatelessWidget {
  final double left = 30;
  final double top = 10;
  final double right = 10;
  final double bottom = 10;

  Map<String, dynamic> args;

  Detail(this.args);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Details of ${args['name']}"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            height: 250,
            width: 250,
            padding: const EdgeInsets.fromLTRB(20, 10, 10, 10),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                  image: AssetImage(args['image']), fit: BoxFit.fill),
            ),
          ),
          Container(
            padding: EdgeInsets.fromLTRB(left, 30, right, bottom),
            child: Text("Name : ${args['name']}"),
          ),
          Container(
            padding: EdgeInsets.fromLTRB(left, top, right, bottom),
            child: Text("Role : ${args['role']}"),
          ),
          Container(
            padding: EdgeInsets.fromLTRB(left, top, right, bottom),
            child: Text("Location : ${args['location']}"),
          ),
          Container(
            padding: EdgeInsets.fromLTRB(left, top, right, bottom),
            child: Text("College : ${args['college']}"),
          )
        ],
      ),
    );
  }
}
