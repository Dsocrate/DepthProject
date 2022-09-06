import 'package:flutter/material.dart';
class Recipient extends StatelessWidget {
  final String Name;
  Recipient({
    required this.Name,
});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          child: IconButton(
            color: Colors.grey,
            icon: Icon(Icons.circle),
            iconSize: 25,
            onPressed: (){},
          ),
        ),
        Text(Name,
          style: TextStyle(color: Colors.black, fontSize: 17),),

      ],
    );
  }
}




