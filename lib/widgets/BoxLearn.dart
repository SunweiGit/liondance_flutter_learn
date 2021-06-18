/// Flutter code sample for AbsorbPointer
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
    return ListView(children: [
      Container(
        height: 50,
        width: 20,
        color: Colors.deepPurple,
        child: SizedBox(
          width: double.infinity,
          height: double.infinity,
          child: Text('SizedBox'),
        ),
      ),
      Container(
          height: 50,
          width: 20,
          color: Colors.red,
          child: ConstrainedBox(
            constraints: const BoxConstraints.expand(),
            child: const Card(child: Text('ConstrainedBox!')),
          )),
      Container(
        width: double.infinity,
        height: 100.0,
        alignment: Alignment.center,
        color: Colors.amberAccent,
        child: AspectRatio(
          aspectRatio: 16 / 16,
          child: Container(
            color: Colors.green,
          ),
        ),
      ),
    ]);
  }
}
