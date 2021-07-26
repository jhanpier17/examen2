import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class GoogleButton extends StatefulWidget{
  final VoidCallback onPressed;
  double widthC=0.0;
  double heightC=0.0;
  final String text;

  GoogleButton({Key? key, required this.text, required this.onPressed, required this.widthC, required this.heightC});
  @override
  State<StatefulWidget> createState() {
    return _BottonGoogle();
  }

}

class _BottonGoogle extends State<GoogleButton>{
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: widget.onPressed,
      child: Container(
        margin: EdgeInsets.only(top: 15, right: 15, left: 15),
        width: widget.widthC,
        height: widget.heightC,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          gradient: LinearGradient(
            colors:[
              Color(0xffD9D5D5),
              Color(0xFFF477A2)
            ],
            begin: FractionalOffset(0.2,0.0),
            end: FractionalOffset(1.0,0.6),
            stops: [0.0,0.5]
          ),
        ),
        child:  Center(
        child: Text(
          widget.text,
          style: TextStyle(fontSize: 15.0, color: Colors.white)
        ),
      ),
      ),
    );
  }

}