/// Flutter code sample for ReorderableListView
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

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
    Container(
      width: 100,
      height: 200,
      color: Colors.purple,
    ),
    Container(
      width: 200,
      height: 200,
      color: Colors.lightGreenAccent,
    ),
    Container(
      width: 100,
      height: 300,
      color: Colors.lightGreen,
    ),
    Container(
      width: 100,
      height: 100,
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
    return InkWell(
      onTap: () => {_updatePadding()},
      child: Stack(
        alignment: Alignment.bottomCenter,
        fit: StackFit.passthrough,
        children: _list,
        clipBehavior: Clip.hardEdge,
      ),
    );
  }
}
