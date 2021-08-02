import 'dart:js';

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:thedebators/loginpage.dart';
import './main.dart';
import './loginpage.dart';

class HomePage extends StatefulWidget {
  //const HomePage({ Key? key }) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Widget _button(String textt) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 60),
      child: MaterialButton(
        elevation: 0,
        height: 80,
        //minWidth: 70,
        onPressed: () {},
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
        child: Center(
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 250,
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height - 250,
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: Colors.white),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(63.0),
                    topRight: Radius.circular(63.0),
                    bottomLeft: Radius.zero,
                    bottomRight: Radius.zero,
                  ),
                ),
                child: Column(
                  children: <Widget>[
                    SizedBox(
                      height: 30,
                    ),
                    Text(
                      "THE\nDEBATORS",
                      //textAlign: TextAlign.left,
                      style: TextStyle(
                          fontSize: 58,
                          color: Colors.black,
                          fontFamily: 'Red Rose',
                          fontWeight: FontWeight.bold,
                          package: 'my_package'),
                    ),
                    SizedBox(
                      height: 150,
                    ),
                    _button("GET STARTED"),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
