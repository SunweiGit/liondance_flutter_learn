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
        home: CanvasAnimateWidget());
  }
}

class CanvasAnimateWidget extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    return _CanvasAnimateWidgetState();
  }
}

class _CanvasAnimateWidgetState extends State<CanvasAnimateWidget> with SingleTickerProviderStateMixin {

  static const MAX_VALUE = 750.0;
  static const VALUE = 500.0;

  late AnimationController controller;
  late Animation<double> animation;
  var value = VALUE;

  @override
  void initState() {
    super.initState();
    controller = AnimationController(duration : Duration(seconds: 1), vsync: this);
    animation = Tween(begin: 0.0, end : VALUE).animate(controller)
      ..addListener(() { setState(() {});});
    controller.forward();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: CustomPaint(
        painter: DashBoardPainter(value: animation.value, maxValue: MAX_VALUE),
        size: Size(300, 300),
      ),
    );
  }

}

class DashBoardPainter extends CustomPainter {

  static const int GRID_NUM = 24;

  var maxValue;
  var value;
  int pi=100;
  int min=20;

  DashBoardPainter({this.maxValue, this.value});

  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = new Paint();
    //1.???????????????
    _drawBg(canvas, paint, size);
    //2.???????????????
    _drawArc(canvas, paint, size);
  }

  _drawBg(Canvas canvas, Paint paint, Size size) {
    paint..color = Colors.blue
      ..style = PaintingStyle.fill;
    canvas.drawRect(Rect.fromLTWH(0, 0, size.width, size.height), paint);
  }

  _drawArc(Canvas canvas, Paint paint, Size size) {
    var padding = 10.0;
    var width = size.width - 2*padding;
    var height = size.height - padding;
    canvas.save();
    canvas.translate(padding, padding);

    //1.????????????????????????
    paint..color = Colors.white10
      ..strokeWidth = 2.0
      ..style = PaintingStyle.stroke;
    canvas.drawArc(Rect.fromCircle(center: Offset(50, 70), radius:10.0),10,10,true,paint);

    //2.????????????????????????????????????
    paint..color = Colors.white;
    var faction = value / maxValue;
    canvas.drawArc(Rect.fromCircle(center: Offset(60, 80), radius:10.0),10,10,true,paint);

    //3.?????????????????????
    var arcX = 10.0;
    var arcWidth = 10.0;
    paint..strokeWidth = arcWidth..color = Colors.white10;
    canvas.drawArc(Rect.fromCircle(center: Offset(70, 90), radius:10.0),10,10,true,paint);

    //4.???????????????????????????????????????????????????????????????????????????
    paint.strokeWidth = 2.0;
    var threadHold = (value / (maxValue / GRID_NUM));
    for (var i = 0; i <= GRID_NUM; i++) {
      canvas.save();
      paint.color = i <= threadHold ? Colors.white : Colors.white24;
      canvas.translate(width/2, height/2);
      canvas.rotate(pi*i/GRID_NUM);
      canvas.translate(-width/2, -height/2);
      canvas.drawLine(Offset(arcX, height/2), Offset(arcX+arcWidth, height/2), paint);
      canvas.restore();
    }

    //5.???????????????
    TextSpan textSpan = TextSpan(
        style: TextStyle(
            color: Colors.white,
            fontSize: 50
        ),
        text: '${(value as double).toStringAsFixed(0)}'
    );
    TextPainter textPainter = TextPainter(
        text: textSpan,
        textDirection: TextDirection.ltr
    );
    textPainter.layout();
    textPainter.paint(canvas, Offset(width/2 - textPainter.width/2, height/3));
    canvas.restore();
  }


  @override
  bool shouldRepaint(DashBoardPainter oldDelegate) =>
      (maxValue != oldDelegate.maxValue || value != oldDelegate.value);


}
