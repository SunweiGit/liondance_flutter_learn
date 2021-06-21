/*
import 'package:flutter/animation.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  final _controller = AnimationController(vsync:TickerProviderStateMixin())
  ..drive(Tween(begin: 0, end: 1))
  ..duration = Duration(milliseconds: 500);


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text("Flexible"),
      ),
      body: InkWell(
        child: AnimatedIcon(
          icon: AnimatedIcons.menu_arrow,
          semanticLabel: 'Show menu',
          progress: _controller,
        ),
      ),
    ));
  }
}
*/
