import 'package:flutter/material.dart';
import 'package:provider_ex_03/components/dog_widget.dart';
import 'package:provider_ex_03/models/dog.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Provider Example 03',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final dog = Dog(name: '멍멍이', breed: '시츄');

  @override
  void initState() {
    super.initState();
    dog.addListener(dogListener); // dog 객체에 dogListener 함수를 추가
  }

  void dogListener() {
    print('age listener: ${dog.age}');
  }

  @override
  void dispose() {
    dog.removeListener(dogListener); // dog 객체에 dogListener 함수를 제거
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Provider Example 03'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Text(
              // Provider.of 함수의 context를 사용하여 Dog 객체의 name 속성에 접근
              '- name : ${dog.name}',
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(height: 20),
            BreedAndAge(dog: dog),
          ],
        ),
      ),
    );
  }
}
