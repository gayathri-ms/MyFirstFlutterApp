import '/models/detail.dart';
import '/src/eachcolumn.dart';
import 'package:flutter/material.dart';
import 'package:responsive_grid/responsive_grid.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final detail = Details.fetchAll();
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: const Color.fromARGB(255, 238, 228, 228),
          title: const Text("MittArvians Details"),
          titleTextStyle: const TextStyle(
              color: Colors.black, fontSize: 30, fontWeight: FontWeight.w500),
        ),
        // backgroundColor: Color.fromARGB(255, 197, 223, 235),
        backgroundColor: Colors.white,
        body: ClipPath(
          clipper: WhiteClipper(),
          child: Container(
            color: Colors.black,
            child: ResponsiveGridList(
              desiredItemWidth: 350,
              rowMainAxisAlignment: MainAxisAlignment.center,
              children: detail
                  .map((d) => GestureDetector(
                      child: Container(
                          padding: const EdgeInsets.fromLTRB(10, 20, 10, 20),
                          child: Eachcolumn(d.name, d.imagepath, d.role,
                              d.college, d.location))))
                  .toList(),
            ),
          ),
        ));
  }
}

class WhiteClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var waveHeight = 80;
    Path path = new Path();
    final lowPoint = size.height - waveHeight;
    final highPoint = size.height - waveHeight * 2;
    path.lineTo(0, size.height);
    path.quadraticBezierTo(size.width / 4, highPoint, size.width / 2, lowPoint);
    path.quadraticBezierTo(
        3 / 4 * size.width, size.height, size.width, lowPoint);
    path.lineTo(size.width, 0);
    return path;
  }

  @override
  bool shouldReclip(CustomClipper oldClipper) {
    return false;
  }
}
