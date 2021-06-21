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
          Container(
            height: 300,
            child: Column(children: [
              Flexible(
                  flex: 2,
                  child: Container(
                    color: Colors.cyan,

                  )),
              Flexible(
                  flex: 1,
                  child: Container(
                    color: Colors.lightGreenAccent,
                  ))
            ]),
          ),
          Column(children: [
            Container(
              height: 100,
              color: Colors.black,
            ),
            Container(
              height: 100,
              color: Colors.red,
            )
          ]),
          Row(
            children: [
              Flexible(
                  flex: 1,
                  child: Container(
                    height: 100,
                    color: Colors.amber,
                  )),
              Flexible(
                  flex: 4,
                  child: Container(
                    height: 100,
                    color: Colors.purple,
                  )),
              Flexible(
                  flex: 1,
                  child: Container(
                    height: 100,
                    color: Colors.deepPurple,
                  ))
            ],
          ),
        ],
      ),
    ));
  }
}
