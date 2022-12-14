import 'package:flutter/material.dart';

class Square_tile extends StatelessWidget {
  final String imagepath;
  const Square_tile({Key? key, required this.imagepath}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.grey[200],
        border: Border.all(color: Colors.white),
      ),
child: Image.asset(imagepath, height: 40,),
    );
  }
}
