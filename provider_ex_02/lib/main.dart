import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_ex_02/components/dog_widget.dart';
import 'package:provider_ex_02/models/dog.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Provider<Dog>(
      // MaterialApp을 Provider로 감싸기
      create: (context) => Dog(
        name: 'june',
        breed: 'Golden Retriever',
        age: 3,
      ), // create 속성에 Dog 객체 생성
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Provider Example 02',
        home: const MyHomePage(),
      ),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Provider Example 02'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Text(
              // Provider.of 함수의 context를 사용하여 Dog 객체의 name 속성에 접근
              '- name : ${Provider.of<Dog>(context).name}',
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(height: 20),
            BreedAndAge(),
          ],
        ),
      ),
    );
  }
}
