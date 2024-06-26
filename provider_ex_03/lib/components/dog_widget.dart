import 'package:flutter/material.dart';
import 'package:provider_ex_03/models/dog.dart';

class BreedAndAge extends StatelessWidget {
  final Dog dog;
  const BreedAndAge({super.key, required this.dog});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Text(
          '- breed : ${dog.breed}',
          style: const TextStyle(fontSize: 20),
        ),
        const SizedBox(height: 20),
        Age(dog: dog),
      ],
    );
  }
}

class Age extends StatelessWidget {
  final Dog dog;
  const Age({super.key, required this.dog});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          '- age : ${dog.age}',
          style: const TextStyle(fontSize: 20),
        ),
        const SizedBox(height: 20),
        ElevatedButton(
          onPressed: () {
            dog.grow();
          },
          child: const Text('Grow'),
        ),
      ],
    );
  }
}
