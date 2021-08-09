import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:thedebators/loginpage.dart';
import './HomePage.dart';
import './feedPage.dart';

//void main() => runApp(MyApp());
// void main() async {
//   WidgetsFlutterBinding.ensureInitialized();
//   await Firebase.initializeApp();
//   runApp(MyApp());
// }
// Future<void> main() async {
//   WidgetsFlutterBinding.ensureInitialized();
//   await Firebase.initializeApp();
//   runApp(MyApp());
// }
//import 'package:shared_preferences/shared_preferences.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  //await SharedPreferences.getInstance();
  runApp(MyApp());
}

final Color bg = Color(0xFF888CE4);
final Color pc = Color(0xFF25238D);

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      //home: HomePage(),
      routes: {
        '/': (_) => HomePage(),
        '/loginpage': (_) => loginpage(),
        '/FeedPage': (_) => FeedPage(),
      },
    );
  }
}
