import 'package:flutter/material.dart';

class Network extends StatelessWidget {
  final String NetworkImage;

  Network({
    required this.NetworkImage,
});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 57,
      width: 57,
      margin: EdgeInsets.all(7),
      padding: EdgeInsets.all(3),
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.grey,
        ),
          borderRadius:BorderRadius.circular(5)
      ),
      child: Image(
        image: AssetImage(NetworkImage),
      ),
    );
  }
}
