import 'package:flutter/material.dart';
// imports material from flutter that handles a lot of work
import 'intro.dart';
// where our customWidget comes from

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  // stateful widget updates itself unlike final stateless
  const MyApp({Key? key}) : super(key: key); // constructor to framework

  @override
  State<StatefulWidget> createState() {
    // created for stateful widgets
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

  // stateless is widget that is stagnant
  @override // stylistic to show you aren't accidentally overriding it
  Widget build(BuildContext context) {
    var topics = [
      // list in dart is like that of java
      'Introduction to Flutter!',
      'Flutter is better!',
      'Widgeting!'
    ];

    return MaterialApp(
      home: Scaffold(
        // the base visible widget pretty much
        appBar: AppBar(
          title: const Text('This is Flutter and Dart!'),
          backgroundColor: Colors.lightBlueAccent,
        ),
        body: Column(children: [
          // column stacks the widgets
          Container(
            // container groups widgets together
            alignment: Alignment.topCenter,
            padding: const EdgeInsets.all(20),
            margin: EdgeInsets.all(15),
            color: Colors.cyan,
            child: Column(children: [
              // child is the content shown
              Container(
                  // introduction widget
                  padding: const EdgeInsets.all(20), // customization!
                  margin: EdgeInsets.all(5),
                  child: Column(children: [
                    // children means > 1
                    Text(
                      topics.elementAt(0),
                      style: TextStyle(fontSize: 25, color: Colors.white),
                    ),
                    customWidget(), // instead of a raised button we use this
                  ])),
              Container(
                  // flutter is better widget
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
                        // on button press
                        print('this is a widget'); // prints to dev console
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
                      // customizable button!
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
                      '$_counter', // updates the counter on screen
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
// thanks for reading all the way through!
