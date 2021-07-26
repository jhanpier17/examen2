import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Ventana extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueAccent,
      body: Container(
        child: ListView(children: <Widget>[
          Container(
            margin: EdgeInsets.only(top: 30.0, left: 130, right: 130),
                  height: 150.0,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.cover, image: AssetImage("img/tranquilidad.jpg")),
                    borderRadius: BorderRadius.all(Radius.circular(100.0)),
                  ),
          ),
          Container(
            margin: EdgeInsets.only(top: 20.0),
            alignment: Alignment.center,
            width: 380.00,
            height: 40.00,
            child: Text(
              'Relax Your Mind',
              textAlign: TextAlign.center,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                  fontSize: 28, fontWeight: FontWeight.bold, color: Colors.white),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 0.0),
            alignment: Alignment.center,
            width: 380.00,
            height: 20.00,
            child: Text(
              "Day episode",
              textAlign: TextAlign.center,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(fontSize: 15, color: Colors.white),
            ),
          ),
        ])
      ),
    );
  }
}
