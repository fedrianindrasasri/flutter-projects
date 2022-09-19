import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class MyButton extends StatelessWidget {
  final String topic;
  final Function callbackFunction;
  const MyButton(
      {Key? key, required this.topic, required this.callbackFunction})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        callbackFunction(topic);
      },
      child: Container(
          width: double.maxFinite,
          height: 70,
          margin:
              const EdgeInsets.only(top: 50, left: 40, right: 40, bottom: 20),
          decoration: BoxDecoration(
              color: Colors.lightBlue, borderRadius: BorderRadius.circular(20)),
          child: Center(
              child: Text(topic,
                  style: TextStyle(fontSize: 20, color: Colors.white)))),
    );
  }
}
