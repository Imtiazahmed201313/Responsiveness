import 'package:flutter/material.dart';

class myTile extends StatelessWidget {
  const myTile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Container(
        color: Colors.grey[400],
        height: 80,
      ),
    );;
  }
}
