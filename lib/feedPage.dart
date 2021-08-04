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
  bool _showFab = true;
  bool _showNotch = true;
  FloatingActionButtonLocation _fabLocation =
      FloatingActionButtonLocation.centerDocked;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
        leading: IconButton(
          icon: Icon(Icons.menu),
          tooltip: 'Menu',
          onPressed: () {},
        ),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.notification_add),
            tooltip: 'Notification',
            onPressed: () {},
          )
        ],
      ),
      backgroundColor: bg,
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.add),
        tooltip: 'Post',
      ),
      floatingActionButtonLocation: _fabLocation,
      bottomNavigationBar: _BottomAppBarr(
        fabLocation: _fabLocation,
        shape: const CircularNotchedRectangle(),
      ),
    );
  }
}

class _BottomAppBarr extends StatelessWidget {
  //_BottomAppBar const ({ Key? key }) : super(key: key);
  _BottomAppBarr({
    this.fabLocation = FloatingActionButtonLocation.centerDocked,
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
            Container(height: 60.0),
            IconButton(
              tooltip: 'Home',
              icon: const Icon(
                Icons.home,
                size: 30,
              ),
              color: Colors.white,
              onPressed: () {},
            )
          ],
        ));
  }
}
