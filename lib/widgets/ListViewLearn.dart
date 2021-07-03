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
        body: const LogoFade(),
      ),
    );
  }
}

class LogoFade extends StatefulWidget {
  const LogoFade({Key? key}) : super(key: key);

  @override
  State<LogoFade> createState() => LogoFadeState();
}

class LogoFadeState extends State<LogoFade> {
  double opacityLevel = 1.0;

  void _changeOpacity() {
    setState(() => opacityLevel = opacityLevel == 0 ? 1.0 : 0.0);
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Text(
          "水平滚动",
          textAlign: TextAlign.center,
        ),
        Container(
          height: 200,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: <Widget>[
              Container(
                width: 400,
                height: 500,
                color: Colors.cyan,
                child: FractionallySizedBox(child: Text("aaaaaa")),
              ),
              Container(
                width: 400,
                height: 500,
                color: Colors.lightGreen,
                child: FractionallySizedBox(child: Text("aaaaaa")),
              ),
              Container(
                width: 400,
                height: 500,
                color: Colors.purple,
                child: FractionallySizedBox(
                    widthFactor: 0.5,
                    heightFactor: 0.5,
                    alignment: Alignment.center,
                    child: Container(
                      color: Colors.amber,
                    )),
              )
            ],
          ),
        ),
        Text(
          "垂直滚动",
          textAlign: TextAlign.center,
        ),
        Container(
          height: 500,
          child: ListView(
            children: <Widget>[
              Container(
                width: 400,
                height: 500,
                color: Colors.cyan,
                child: FractionallySizedBox(child: Text("aaaaaa")),
              ),
              Container(
                width: 400,
                height: 500,
                color: Colors.lightGreen,
                child: FractionallySizedBox(child: Text("aaaaaa")),
              ),
              Container(
                width: 400,
                height: 500,
                color: Colors.purple,
                child: FractionallySizedBox(
                    widthFactor: 0.5,
                    heightFactor: 0.5,
                    alignment: Alignment.center,
                    child: Container(
                      color: Colors.amber,
                    )),
              )
            ],
          ),
        ),
        Text(
          "由下往上滚动",
          textAlign: TextAlign.center,
        ),
        Container(
          height: 500,
          child: ListView(
            reverse: true,
            children: <Widget>[
              Container(
                width: 400,
                height: 500,
                color: Colors.cyan,
                child: FractionallySizedBox(child: Text("aaaaaa")),
              ),
              Container(
                width: 400,
                height: 500,
                color: Colors.lightGreen,
                child: FractionallySizedBox(child: Text("aaaaaa")),
              ),
              Container(
                width: 400,
                height: 500,
                color: Colors.purple,
                child: FractionallySizedBox(
                    widthFactor: 0.5,
                    heightFactor: 0.5,
                    alignment: Alignment.center,
                    child: Container(
                      color: Colors.amber,
                    )),
              )
            ],
          ),
        ),

      ],
    );
  }
}
