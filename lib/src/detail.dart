import '/src/style.dart';
import 'package:flutter/material.dart';

class Detail extends StatelessWidget {
  final double left = 30;
  final double top = 10;
  final double right = 10;
  final double bottom = 10;

  final Map<String, dynamic> args;

  Detail(this.args);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 238, 228, 228),
          centerTitle: true,
          title: Text("Details of ${args['name']}"),
          titleTextStyle: const TextStyle(
              color: Color.fromARGB(255, 93, 10, 83),
              fontWeight: FontWeight.w500,
              fontSize: 28),
        ),
        backgroundColor: const Color.fromARGB(255, 16, 16, 16),
        body: SafeArea(
          child: ClipPath(
            child: ListView(
              children: [
                SizedBox(height: 20),
                Container(
                  width: 700,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        height: 250,
                        width: 250,
                        padding: const EdgeInsets.fromLTRB(20, 30, 10, 10),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(
                              // color: const Color.fromARGB(255, 69, 91, 69),
                              color: Colors.white,
                              width: 4),
                          image: DecorationImage(
                              image: AssetImage(args['image']),
                              fit: BoxFit.fill),
                        ),
                      ),
                      Container(
                        width: 800,
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              Container(
                                  padding:
                                      const EdgeInsets.fromLTRB(30, 20, 5, 5),
                                  child: const Text("About : ",
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                          // color: Color.fromARGB(255, 72, 98, 63),
                                          color: Colors.white,
                                          fontSize: 26,
                                          fontWeight: FontWeight.w400))),
                              Container(
                                padding:
                                    const EdgeInsets.fromLTRB(25, 20, 30, 5),
                                child: const Text(
                                    "A paragraph is a series of related sentences developing a central idea, called the topic. Try to think about paragraphs in terms of thematic unity: a paragraph is a sentence or a group of sentences that supports one central, unified idea. Paragraphs add one idea at a time to your broader argument.",
                                    style: TextStyle(
                                      // color: Color.fromARGB(255, 18, 50, 3),
                                      color: Colors.white,
                                      fontSize: 20,
                                    ),
                                    textAlign: TextAlign.justify),
                              )
                            ]),
                      ),
                      Container(
                        width: 800,
                        decoration: const BoxDecoration(
                          shape: BoxShape.rectangle,
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            Container(
                              padding:
                                  EdgeInsets.fromLTRB(left, 30, right, bottom),
                              child: Style("Name", args["name"]),
                            ),
                            Container(
                                padding: EdgeInsets.fromLTRB(
                                    left, top, right, bottom),
                                child: Style("Role", args["role"])),
                            Container(
                              padding:
                                  EdgeInsets.fromLTRB(left, top, right, bottom),
                              child: Style("Location", args["location"]),
                            ),
                            Container(
                              padding:
                                  EdgeInsets.fromLTRB(left, top, right, bottom),
                              child: Style("College", args["college"]),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ],
              shrinkWrap: true,
            ),
            clipper: BottomWaveClipper(),
          ),
        ));
  }
}

class BottomWaveClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var waveHeight = 10;
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
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
