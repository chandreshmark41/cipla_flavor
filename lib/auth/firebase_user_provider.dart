import 'package:firebase_auth/firebase_auth.dart';
import 'package:rxdart/rxdart.dart';

class CiplaFirebaseUser {
  CiplaFirebaseUser(this.user);
  User? user;
  bool get loggedIn => user != null;
}

CiplaFirebaseUser? currentUser;
bool get loggedIn => currentUser?.loggedIn ?? false;
Stream<CiplaFirebaseUser> ciplaFirebaseUserStream() => FirebaseAuth.instance
    .authStateChanges()
    .debounce((user) => user == null && !loggedIn
        ? TimerStream(true, const Duration(seconds: 1))
        : Stream.value(user))
    .map<CiplaFirebaseUser>((user) => currentUser = CiplaFirebaseUser(user));
