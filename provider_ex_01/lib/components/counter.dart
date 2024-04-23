import 'package:flutter/material.dart';

class CounterA extends StatelessWidget {
  const CounterA({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red[100],
      padding: const EdgeInsets.all(20.0),
      child: const Column(
        children: [
          Text('MyHomePage'),
        ],
      ),
    );
  }
}

class CounterB extends StatelessWidget {
  const CounterB({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue[100],
      padding: const EdgeInsets.all(20.0),
      child: Column(
        children: [
          Text(
            '0',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          ElevatedButton(
            onPressed: () {},
            child: const Text('Increment'),
          ),
        ],
      ),
    );
  }
}

class Sibling extends StatelessWidget {
  const Sibling({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.green[100],
      padding: const EdgeInsets.all(20.0),
      child: Column(
        children: [
          Text(
            '0',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text('Sibling'),
        ],
      ),
    );
  }
}
