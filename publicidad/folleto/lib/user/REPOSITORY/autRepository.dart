
import 'package:firebase_auth/firebase_auth.dart';
import 'autFirebase.dart';

class AutRepository{
  final _autFirebase = AutFirebase();
  Future <UserCredential> singInFirebase() => _autFirebase.singIn();
}