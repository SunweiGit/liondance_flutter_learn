/// Flutter code sample for FadeTransition
import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

/// This is the main application widget.
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  static const String _title = 'Flutter Code Sample';

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: _title,
      home: MyStatefulWidget(),
    );
  }
}

/// This is the stateful widget that the main application instantiates.
class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key? key}) : super(key: key);

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

/// This is the private State class that goes with MyStatefulWidget.
/// AnimationControllers can be created with `vsync: this` because of TickerProviderStateMixin.
class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: CustomScrollView(slivers: [
      SliverPadding(
          padding: EdgeInsets.all(5),
          sliver: SliverGrid(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 4, mainAxisSpacing: 4, crossAxisSpacing: 3),
            delegate:
                SliverChildBuilderDelegate((BuildContext context, int index) {
              return FadeInImage(
                // here `bytes` is a Uint8List containing the bytes for the in-memory image
                placeholder: AssetImage("images/img.png"),
                image: const NetworkImage('https://images.pexels.com/photos/8035729/pexels-photo-8035729.jpeg?cs=srgb&dl=pexels-monica-turlui-8035729.jpg&fm=jpg'),
              );
            }, childCount: 12),
          ))
    ]));
  }
}
