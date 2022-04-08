import '/models/detail.dart';
import '/src/eachcolumn.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final detail = Details.fetchAll();
    return Scaffold(
      appBar: AppBar(
        title: const Text("MittArvians Details"),
      ),
      body: ListView(
        children: detail
            .map((d) => GestureDetector(
                child: Container(
                    child: Eachcolumn(
                        d.name, d.imagepath, d.role, d.college, d.location))))
            .toList()
        //  [
        //   Eachcolumn("name", "assets/images/image1.jpg"),
        //   Eachcolumn("name", "assets/images/image1.jpg"),
        //   Eachcolumn("name", "assets/images/image1.jpg"),
        // ],
        ,
        shrinkWrap: true,
      ),
    );
  }
}
