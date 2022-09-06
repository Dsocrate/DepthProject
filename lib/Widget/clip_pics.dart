import 'package:flutter/material.dart';
class Clip extends StatelessWidget {
  final String Name1;
  final String Name2;
  final String Image;

  Clip({
    required this.Name1,
    required this.Image,
    required this.Name2,
});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          radius: 23.0,
          backgroundImage: AssetImage(Image),
        ),
        Text(Name1,
          style: TextStyle(color: Colors.black26, fontSize: 15),),
        Text(Name2,
          style: TextStyle(color: Colors.black26, fontSize: 15),),
      ],
    );
  }
}
