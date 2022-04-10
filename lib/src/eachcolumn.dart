import 'dart:ui';

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
        padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
        child: TextButton(
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
                  height: 200,
                  width: 300,
                  padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                  decoration: BoxDecoration(
                    // shape: BoxShape.rectangle,
                    border: Border.all(
                        // color: const Color.fromARGB(255, 29, 31, 33), width: 4),
                        color: Colors.white,
                        width: 4),
                    borderRadius: const BorderRadius.all(Radius.circular(
                            10.0) //                 <--- border radius here
                        ),
                    image: DecorationImage(
                        image: AssetImage(imagepath), fit: BoxFit.cover),
                  )),
              //   child: Image.asset(
              //     imagepath,
              //     fit: BoxFit.cover,
              //   ),
              // ),
              Container(
                padding: const EdgeInsets.fromLTRB(0, 10, 0, 5),
                child: Text(
                  name,
                  style: const TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.w400),
                ),
              )
            ],
          ),
        ));
  }
}
