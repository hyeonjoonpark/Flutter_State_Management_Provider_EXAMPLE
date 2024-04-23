import 'package:flutter/material.dart';

class CounterA extends StatelessWidget {
  final int counter;
  final void Function() increment;
  const CounterA({
    super.key,
    required this.counter,
    required this.increment,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red[100],
      padding: const EdgeInsets.all(20.0),
      child: Column(
        children: [
          Text(
            "$counter",
            style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 20),
          ElevatedButton(
            onPressed: increment,
            child: const Text('Increment'),
          ),
        ],
      ),
    );
  }
}

class Middle extends StatelessWidget {
  final int counter;
  const Middle({
    super.key,
    required this.counter,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey[100],
      padding: const EdgeInsets.all(20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          ContainerB(
            counter: counter, // parent에서 받아서 전달만 하는 목적
          ),
          const Sibling()
        ],
      ),
    );
  }
}

class ContainerB extends StatelessWidget {
  final int counter;
  const ContainerB({
    super.key,
    required this.counter,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue[100],
      padding: const EdgeInsets.all(20.0),
      child: Column(
        children: [
          Text(
            '$counter',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}

class Sibling extends StatelessWidget {
  const Sibling({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey[100],
      padding: const EdgeInsets.all(20.0),
      child: const Column(
        children: [
          Text("Sibling"),
        ],
      ),
    );
  }
}
