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
          // Provider.of 함수의 context를 사용하여 Dog 객체의 breed 속성에 접근
          '- breed : ${dog.breed}',
          style: TextStyle(fontSize: 20),
        ),
        SizedBox(height: 20),
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
          // Provider.of 함수의 context를 사용하여 Dog 객체의 age 속성에 접근
          '- age : ${dog.age}',
          style: TextStyle(fontSize: 20),
        ),
        SizedBox(height: 20),
        ElevatedButton(
          onPressed: () {
            // Provider.of 함수의 context를 사용하여 Dog 객체의 grow 메서드 호출
            dog.grow();
          },
          child: Text('Grow'),
        ),
      ],
    );
  }
}
