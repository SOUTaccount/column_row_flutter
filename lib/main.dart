import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
void main() {
  runApp(ScreenWidget());
}
class ScreenWidget extends StatelessWidget{
  Widget build (BuildContext context){
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Column & Row Widgets'),
        ),
        body: SimpleWidget(),
      ),
    );
  }
}
class TextWidget extends StatelessWidget {
  const TextWidget({Key key,this.text,this.color,this.width,this.fontSize}) : super (key: key);
  final String text;
  final Color color;
  final double width;
  final double fontSize;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      width: width,
      color: color,
      child: Text(text,
        style: TextStyle(fontSize: fontSize),),
    );
  }
}
class SimpleWidget extends StatelessWidget {
    Widget build (BuildContext context){
      return Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        textDirection: TextDirection.rtl,
        verticalDirection: VerticalDirection.up,
        children: <Widget>[
          TextWidget(
            color: Colors.limeAccent,
            width: 120,
            text: 'First',
            fontSize: 50,
          ),
          TextWidget(
            color: Colors.cyanAccent,
            width: 180,
            text: 'Second',
            fontSize: 40,
          ),
          TextWidget(
            color: Colors.purpleAccent,
            width: 70,
            text: 'Third',
            fontSize: 30,
          )
        ],
      );
  }
}