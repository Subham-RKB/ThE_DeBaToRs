import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:thedebators/feedPage.dart';
import 'package:thedebators/firebase/authentication.dart';
import './main.dart';
import './HomePage.dart';

class loginpage extends StatefulWidget {
  //const ({ Key? key }) : super(key: key);

  @override
  _loginpageState createState() => _loginpageState();
}

class _loginpageState extends State<loginpage> {
  final AuthService _auth = AuthService();
  final _formKey = GlobalKey<FormState>();
  String email = '';
  String password = '';
  String error = '';
  Widget _button(String textt) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 60),
      child: MaterialButton(
        elevation: 0,
        height: 80,
        //minWidth: 70,
        onPressed: () async {
          //startSignIn();
          if (_formKey.currentState.validate()) {
            // print(email);
            // print(password);
            dynamic result = await _auth.registerWithEmail(email, password);
            if (result == null) {
              setState(() => {error = 'Please supply a valid email'});
            }
          }
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
            child: Form(
              key: _formKey,
              child: Column(
                children: <Widget>[
                  SizedBox(
                    height: 200,
                  ),
                  Padding(
                    padding: EdgeInsets.all(25),
                    child: TextFormField(
                      validator: (val) => val.isEmpty ? 'Enter an Email' : null,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Username',
                        hintText: 'Username',
                      ),
                      onChanged: (val) {
                        setState(() => email = val);
                      },
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(25),
                    child: TextFormField(
                      validator: (val) =>
                          val.length < 8 ? 'Passcode must be 6+' : null,
                      obscureText: true,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Password',
                        hintText: 'Password',
                      ),
                      onChanged: (val) {
                        setState(() => password = val);
                      },
                    ),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  _button('LogIn'),
                  SizedBox(height: 12.0),
                  Text(
                    error,
                    style: TextStyle(color: Colors.red, fontSize: 14.0),
                  )
                ],
              ),
            ),
          ),
        ));
  }
}
