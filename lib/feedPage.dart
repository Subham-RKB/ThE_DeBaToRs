import 'dart:html';

import 'package:flutter/material.dart';
import 'package:thedebators/loginpage.dart';
import './HomePage.dart';
import 'package:path/path.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:thedebators/loginpage.dart';
import './main.dart';
//import './loginpage.dart';

class FeedPage extends StatefulWidget {
  //const FeedPage({ Key? key }) : super(key: key);

  @override
  _FeedPageState createState() => _FeedPageState();
}

class _FeedPageState extends State<FeedPage> {
  FloatingActionButtonLocation _fabLocation =
      FloatingActionButtonLocation.endDocked;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bg,
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.add),
        tooltip: 'Post',
      ),
      bottomNavigationBar: _BottomAppBarr(
        fabLocation: _fabLocation,
        shape: CircularNotchedRectangle(),
      ),
    );
  }
}

class _BottomAppBarr extends StatelessWidget {
  //_BottomAppBar const ({ Key? key }) : super(key: key);
  _BottomAppBarr({
    this.fabLocation = FloatingActionButtonLocation.endDocked,
    this.shape = const CircularNotchedRectangle(),
  });
  final FloatingActionButtonLocation fabLocation;
  final NotchedShape shape;
  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
        shape: shape,
        color: pc,
        //child: IconTheme( colors:Theme.of(context).colorScheme.onPrimary),
        child: Row(
          children: <Widget>[
            Container(height: 75.0),
            IconButton(
              tooltip: 'Home',
              icon: const Icon(
                Icons.home,
                size: 40,
              ),
              color: Colors.white,
              onPressed: () {},
            )
          ],
        ));
  }
}
