import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);
  final PageController controller = PageController(initialPage: 0);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          // This is the theme of your application.
          //
          // Try running your application with "flutter run". You'll see the
          // application has a blue toolbar. Then, without quitting the app, try
          // changing the primarySwatch below to Colors.green and then invoke
          // "hot reload" (press "r" in the console where you ran "flutter run",
          // or simply save your changes to "hot reload" in a Flutter IDE).
          // Notice that the counter didn't reset back to zero; the application
          // is not restarted.
          primarySwatch: Colors.blue,
        ),
        home: Scaffold(
            body: ClipRRect(
          borderRadius: BorderRadius.all(Radius.circular(30)),
          child: Align(
            alignment: Alignment.topCenter,
            heightFactor: 0.5,
            child: Image.network(
                "https://images.pexels.com/photos/8035729/pexels-photo-8035729.jpeg?cs=srgb&dl=pexels-monica-turlui-8035729.jpg&fm=jpg'"),
          ),
        )));
  }
}
