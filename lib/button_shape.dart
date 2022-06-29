import 'package:flutter/material.dart';
import 'package:task1/login_page.dart';

class ButtonShape extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => ButtonShapeState();
}

class ButtonShapeState extends State<ButtonShape> {
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.antiAliasWithSaveLayer,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Colors.teal,
      ),
      width: double.infinity,
      margin: EdgeInsets.symmetric(horizontal: 10),
      padding: EdgeInsets.all(3),
      child: MaterialButton(
        onPressed: () {},
        child: Text(
          "",
          style: TextStyle(
            fontSize: 25,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
