/// Flutter code sample for AspectRatio
import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

/// This is the main application widget.
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  static const String _title = 'Flutter Code Sample';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      home: Scaffold(
          appBar: AppBar(title: const Text(_title)),
          body: ListView(children: [
            for (int i = 0; i < 20; i++)
              LimitedBox(
                maxHeight: 100,
                child: Container(
                  color: Color.fromARGB(Random().nextInt(256),
                      Random().nextInt(256), Random().nextInt(256), 255),
                ),
              )
          ])),
    );
  }
}

/// This is the stateless widget that the main application instantiates.
class MyStatelessWidget extends StatelessWidget {
  const MyStatelessWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue,
      alignment: Alignment.center,
      width: double.infinity,
      height: 100.0,
      child: AspectRatio(
        aspectRatio: 16 / 5,
        child: Container(
          color: Colors.green,
        ),
      ),
    );
  }
}
