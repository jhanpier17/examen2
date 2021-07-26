import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:folleto/user/BLOC/provideruser.dart';
import 'package:folleto/user/UI/SCREEN/ventana.dart';
import 'package:folleto/user/UI/WIDGET/button.dart';
import 'package:folleto/user/UI/WIDGET/googleButton.dart';
import 'package:generic_bloc_provider/generic_bloc_provider.dart';

class Login extends StatelessWidget {
  late Userbloc userBloc;

  @override
  Widget build(BuildContext context) {
    userBloc = BlocProvider.of(context);
    return _controlSesion();
  }

   Widget _controlSesion() {
    return StreamBuilder(stream: userBloc.authStatus, builder: (BuildContext context, AsyncSnapshot snapshot){
      if (!snapshot.hasData || snapshot.hasError) {
        return login();
      }else{
        return Ventana();
      }
    });
  }


  Widget login(){
        return Scaffold(
          backgroundColor: Colors.blueAccent,
          body: Container(
            child: ListView(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(top: 20.0),
                  alignment: Alignment.center,
                  width: 380.00,
                  height: 40.00,
                  child: Text(
                    'Welcome To',
                    textAlign: TextAlign.center,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 0.0),
                  alignment: Alignment.center,
                  width: 380.00,
                  height: 20.00,
                  child: Text(
                    "Meditation Care",
                    textAlign: TextAlign.center,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(fontSize: 15, color: Colors.white),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 30.0, left: 130, right: 130),
                  height: 150.0,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.cover, image: AssetImage("img/meditacion.jpg")),
                    borderRadius: BorderRadius.all(Radius.circular(100.0)),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 50.0),
                  alignment: Alignment.center,
                  width: 380.00,
                  height: 20.00,
                  child: Text(
                    "Lorem ipsum es el texto que se usa habitualmente en diseño gráfico en demostraciones de tipografías o de borradores.",
                    textAlign: TextAlign.center,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(fontSize: 15, color: Colors.white),
                  ),
                ),
                Container(
                  child: GoogleButton(
                    text: "Login with Google",
                    onPressed: () {
                      userBloc.singIn().then((UserCredential user) =>
                          print("El usuario es ${user.user}"));
                    },
                    widthC: 35,
                    heightC: 80,
              ),
            )
          ],
        ),
      ),
    );
  }
}
