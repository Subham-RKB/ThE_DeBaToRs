import 'package:firebase_auth/firebase_auth.dart';
import 'package:thedebators/models/user.dart';

class AuthService {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  Users _FirebaseUser(User user) {
    return user != null ? Users(uid: user.uid) : null;
  }

  Future signInAnon() async {
    try {
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

  //Sign Out
}
