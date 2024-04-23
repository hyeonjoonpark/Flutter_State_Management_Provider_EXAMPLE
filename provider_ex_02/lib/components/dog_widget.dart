import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_ex_02/models/dog.dart';

class BreedAndAge extends StatelessWidget {
  const BreedAndAge({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Text(
          // Provider.of 함수의 context를 사용하여 Dog 객체의 breed 속성에 접근
          '- breed : ${Provider.of<Dog>(context).breed}',
          style: TextStyle(fontSize: 20),
        ),
        SizedBox(height: 20),
        Age(),
      ],
    );
  }
}

class Age extends StatelessWidget {
  const Age({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          // Provider.of 함수의 context를 사용하여 Dog 객체의 age 속성에 접근
          '- age : ${Provider.of<Dog>(context).age}',
          style: TextStyle(fontSize: 20),
        ),
        SizedBox(height: 20),
        ElevatedButton(
          onPressed: () {
            // Provider.of 함수의 context를 사용하여 Dog 객체의 grow 메서드 호출
            Provider.of<Dog>(context, listen: false).grow();
          },
          child: Text('Grow'),
        ),
      ],
    );
  }
}
