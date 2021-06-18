/// Flutter code sample for AbsorbPointer

// The following sample has an [AbsorbPointer] widget wrapping the button on
// top of the stack, which absorbs pointer events, preventing its child button
// __and__ the button below it in the stack from receiving the pointer events.

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
        body: const Center(
          child: MyStatelessWidget(),
        ),
      ),
    );
  }
}

/// This is the stateless widget that the main application instantiates.
class MyStatelessWidget extends StatelessWidget {
  const MyStatelessWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Align(
          alignment: Alignment(0.9, 0.6),
          child: FlutterLogo(
            size: 60,
          ),
        ),
        Align(
          alignment: Alignment.center,
          child: FlutterLogo(
            size: 60,
          ),
        ),
        Align(
          alignment: Alignment.centerRight,
          child: FlutterLogo(
            size: 60,
          ),
        )
      ]
    );
  }
}
