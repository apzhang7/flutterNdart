import 'package:flutter/material.dart';
//imports material from flutter that handles a lot of work
import 'intro.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  //stateful widget updates itself
  const MyApp({Key? key}) : super(key: key); //constructor

  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  int _counter = 0;

  void _counting() {
    setState(() {
      // setState tells Flutter that something changed and you should
      // rerun build method to show changes
      _counter++;
    });
  }

  // starting widget that is stagnant
  @override //stylistic to show you aren't accidentally overriding it
  Widget build(BuildContext context) {
    var topics = [
      'Introduction to Flutter!',
      'Flutter is better!',
      'Widgeting!'
    ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('This is Flutter and Dart!'),
          backgroundColor: Colors.lightBlueAccent,
        ),
        body: Column(children: [
          Container(
            alignment: Alignment.topCenter,
            padding: const EdgeInsets.all(20),
            margin: EdgeInsets.all(15),
            color: Colors.cyan,
            child: Column(children: [
              Container(
                  //intro widget
                  padding: const EdgeInsets.all(20),
                  margin: EdgeInsets.all(5),
                  child: Column(children: [
                    Text(
                      topics.elementAt(0),
                      style: TextStyle(fontSize: 25, color: Colors.white),
                    ),
                    customWidget(), //instead of a raised button we have this
                  ])),
              Container(
                  //flutter is better widget
                  padding: const EdgeInsets.all(20),
                  margin: EdgeInsets.all(5),
                  child: Column(children: [
                    Text(
                      topics.elementAt(1),
                      style: TextStyle(fontSize: 25, color: Colors.amber),
                    ),
                    RaisedButton(
                      child: const Text(
                        'Flutter does many cool things!',
                        style: TextStyle(fontSize: 25),
                      ),
                      onPressed: () {
                        print('this is a widget');
                      },
                    ),
                  ])),
              Container(
                  //counting widget
                  padding: const EdgeInsets.all(30),
                  margin: EdgeInsets.all(5),
                  child: Column(children: [
                    Text(
                      topics.elementAt(2),
                      style: TextStyle(fontSize: 25),
                    ),
                    FloatingActionButton.large(
                      child: const Text(
                        'press me',
                        style: TextStyle(fontSize: 20, color: Colors.red),
                      ),
                      onPressed: _counting,
                    ),
                    Text(
                      'you have pushed this button this many times:',
                      style: TextStyle(fontSize: 15),
                    ),
                    Text(
                      '$_counter',
                      style: TextStyle(fontSize: 15),
                    ),
                  ]))
            ]),
          ),
        ]),
      ),
    );
  }
}
