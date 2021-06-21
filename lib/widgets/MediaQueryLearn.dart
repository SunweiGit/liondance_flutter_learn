import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text("Flexible"),
      ),
      body: ListView(
        children: [
          Row(
            children: [
              Flexible(
                  flex: 1,
                  child: Container(
                    height: 100,
                    color: Colors.amber,
                  )),
              Flexible(
                  flex: 2,
                  child: Container(
                    height: 100,
                    color: Colors.red,
                  )),
              Flexible(
                  flex: 3,
                  child: Container(
                    height: 100,
                    color: Colors.deepPurple,
                  ))
            ],
          ),
          MyStatelessWidget(),
        ],
      ),
    ));
  }
}

/// This is the stateless widget that the main application instantiates.
class MyStatelessWidget extends StatelessWidget {
  const MyStatelessWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var navigationMode = MediaQuery.of(context).navigationMode;
    var padding = MediaQuery.of(context).padding;
    return Column(children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            child: Text("$size"),
          ),
          Container(
            child: Text("$navigationMode"),
          ),
        ],
      ),
      Text("$padding")
    ]);
  }
}
