/// Flutter code sample for ReorderableListView
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
        body: const MyStatefulWidget(),
      ),
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
class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  final List<int> _items = List<int>.generate(10, (int index) => index);
  double padValue = 0.0;
  int _index = 0;

  List<Widget> _list = [
    Semantics(
      label: "ssssss",
      link: false,
      child: Container(
        height: 100,
        color: Colors.purple,
      ),
    ),
    Container(
      color: Colors.lightGreenAccent,
    ),
    Container(
      color: Colors.lightGreen,
    ),
    Container(
      color: Colors.cyan,
    ),
  ];

  void _updatePadding() {
    setState(() {
      if (_index < _list.length - 1) {
        _index++;
      } else {
        _index = 0;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: const BoxConstraints.expand(height: 100.0),
      child: const Card(child: Text('Hello World!')),
    );
  }
}
