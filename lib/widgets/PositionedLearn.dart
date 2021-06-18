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
        body: Container(
          color: Colors.deepPurple,
          child: Stack(
            children: [
              Positioned.fill(
                  top: -110,
                  left: 10,
                  child: FlutterLogo(
                    size: 60,
                  )),
            ],
          ),
        ) ,
      ),
    );
  }
}
