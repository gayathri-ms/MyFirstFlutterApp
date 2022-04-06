import 'package:flutter/material.dart';

class Detail extends StatelessWidget {
  final double left = 30;
  final double top = 10;
  final double right = 10;
  final double bottom = 10;

  var args;
  final String _image = "assets/images/image1.jpg";
  final String _name = "Gayathri";
  final String _role = "Tech Intern";
  final String _location = "Tirupur";
  final String _college = "IIIT BBSR";

  Detail(this.args);
  // Detail(this._name, this._image, this._role, this._location, this._college);

  @override
  Widget build(BuildContext context) {
    print(args);
    return Scaffold(
      appBar: AppBar(
        title: Text("Details of ${_name}"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            height: 250,
            width: 250,
            padding: EdgeInsets.fromLTRB(20, 10, 10, 10),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              image:
                  DecorationImage(image: AssetImage(_image), fit: BoxFit.fill),
            ),
          ),
          Container(
            padding: EdgeInsets.fromLTRB(left, 30, right, bottom),
            child: Text("Name : $_name"),
          ),
          Container(
            padding: EdgeInsets.fromLTRB(left, top, right, bottom),
            child: Text("Role : ${_role}"),
          ),
          Container(
            padding: EdgeInsets.fromLTRB(left, top, right, bottom),
            child: Text("Location : ${_location}"),
          ),
          Container(
            padding: EdgeInsets.fromLTRB(left, top, right, bottom),
            child: Text("College : ${_college}"),
          )
        ],
      ),
    );
  }
}
