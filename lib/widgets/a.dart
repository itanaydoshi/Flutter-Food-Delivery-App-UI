import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget {
  @override
  _CounterScreenState createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  int _counter = 1;

  void _decrement() {
    if (_counter > 1) {
      setState(() {
        _counter--;
      });
    }
  }

  void _increment() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Counter App'),
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              onPressed: _decrement,
              child: Text(
                '-',
                style: TextStyle(fontSize: 20.0),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              child: Text(
                '$_counter',
                style: TextStyle(fontSize: 20.0),
              ),
            ),
            ElevatedButton(
              onPressed: _increment,
              child: Text(
                '+',
                style: TextStyle(fontSize: 20.0),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
