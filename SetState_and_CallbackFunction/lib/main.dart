import 'package:flutter/material.dart';
import 'package:setstate_and_callback_function/my_button.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String topic = "Packages";
  callback(varTopic) {
    setState(() {
      topic = varTopic;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text("Learning Flutter"),
      ),
      body: Column(
        children: [
          Container(
              width: double.maxFinite,
              height: 70,
              margin: const EdgeInsets.only(
                  top: 50, left: 40, right: 40, bottom: 20),
              decoration: BoxDecoration(
                  color: Colors.lightBlue,
                  borderRadius: BorderRadius.circular(20)),
              child: Center(
                  child: Text("We Are Learning Flutter " + topic,
                      style: TextStyle(fontSize: 20, color: Colors.white)))),
          MyButton(topic: "Cubit", callbackFunction:callback)
        ],
      ),
    ));
  }
}
