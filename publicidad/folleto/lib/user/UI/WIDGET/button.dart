import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final String text;
  final Widget routeLink;

  Button({
    required this.text,
    required this.routeLink,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 25.0),
      padding: EdgeInsets.only(right: 150.0, left: 150.0),
      child: MaterialButton(
        height: 40.0,
        onPressed: () {
          Navigator.push(
              context, 
              MaterialPageRoute(builder: (context) => this.routeLink),
            );
        },
        color: Colors.amber,
        child: Text(
          text,
          style: TextStyle(
            color: Colors.white,
            fontSize: 16.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(40),
        ),
        elevation: 8.0,
      ),
    );
  }
}
