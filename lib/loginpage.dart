import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import './main.dart';
import './HomePage.dart';

class loginpage extends StatefulWidget {
  //const ({ Key? key }) : super(key: key);

  @override
  _loginpageState createState() => _loginpageState();
}

class _loginpageState extends State<loginpage> {
  Widget _button(String textt) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 60),
      child: MaterialButton(
        elevation: 0,
        height: 80,
        //minWidth: 70,
        onPressed: () {
          //startSignIn();
          loginpage();
        },
        color: pc,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              textt,
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 32, color: Colors.white, fontFamily: 'Red Rose'),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: bg,
        body: Container(
          width: MediaQuery.of(context).size.width,
          child: Center(
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: 200,
                ),
                Padding(
                  padding: EdgeInsets.all(25),
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Username',
                      hintText: 'Username',
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(25),
                  child: TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Password',
                      hintText: 'Password',
                    ),
                  ),
                ),
                SizedBox(
                  height: 50,
                ),
                _button('LogIn'),
              ],
            ),
          ),
        ));
  }
}
