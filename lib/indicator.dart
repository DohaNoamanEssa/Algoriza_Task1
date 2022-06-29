import 'package:flutter/material.dart';

class Indicator extends StatelessWidget {
  final int index;

  Indicator(this.index);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment(0, .73),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          buildContainer(0, index == 0 ? Colors.red : Colors.teal),
          buildContainer(1, index == 1 ? Colors.red : Colors.teal),
          buildContainer(2, index == 2 ? Colors.red : Colors.teal),
        ],
      ),
    );
  }

  Widget buildContainer(int i, Color clr) {
    return index == i
        ? Container(
      child: Icon(
        Icons.circle,
        color: Colors.red,
      ),
    )
        : Container(
      margin: EdgeInsets.all(4.0),
      height: 15,
      width: 15,
      decoration: BoxDecoration(color: clr, shape: BoxShape.circle),
    );
  }
}
