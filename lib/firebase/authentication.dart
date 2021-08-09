import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:thedebators/models/user.dart';

class AuthService {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  Users _userFromFirebaseUser(User user) {
    return user != null ? Users(uid: user.uid) : null;
  }

  //Auth change user stream
  // Stream<User> get user {
  //   return _auth.onAuthStateChanged.map(_userFromFirebaseUser);
  // }

  Future signInAnon() async {
    try {
      //await Firebase.initializeApp();
      UserCredential result = await _auth.signInAnonymously();
      User user = result.user;
      return user;
    } catch (e) {
      print(e.toString());
      return null;
    }
  }
  //Sign in anon

  //Sign in with email and password
  Future registerWithEmail(String email, String password) async {
    try {
      UserCredential result = await _auth.createUserWithEmailAndPassword(
          email: email, password: password);
      User user = result.user;
      return _userFromFirebaseUser(user);
    } catch (e) {
      print(e.toString());
      return null;
    }
  }

  //Sign Out
}
