import 'package:flutter/material.dart';
import 'package:thedebators/loginpage.dart';
import './HomePage.dart';
import './feedPage.dart';

void main() => runApp(MyApp());
final Color bg = Color(0xFF888CE4);
final Color pc = Color(0xFF25238D);

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      //home: HomePage(),
      routes: {
        '/': (_) => FeedPage(),
        '/loginpage': (_) => loginpage(),
        '/FeedPage': (_) => FeedPage(),
      },
    );
  }
}
