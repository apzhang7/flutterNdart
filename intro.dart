import 'package:flutter/material.dart';

class customWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        color: Colors.pinkAccent,
        child: const Text(
          'This is a widget in intro.dart',
          style: TextStyle(fontSize: 25),
        ),
        onPressed: () {
          print('welcome to flutter with Angela and Ivan!');
        },
      ),
    );
  }
}
