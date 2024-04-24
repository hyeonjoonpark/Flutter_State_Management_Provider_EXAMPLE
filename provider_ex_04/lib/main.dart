import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_ex_04/components/dog_widget.dart';
import 'package:provider_ex_04/models/dog.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<Dog>(
      create: (context) => Dog(name: 'dog04', breed: 'breed04'),
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Provider Example 03',
        home: MyHomePage(),
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Provider Example 03'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Text(
              // Provider.of 함수의 context를 사용하여 Dog 객체의 name 속성에 접근
              '- name : ${Provider.of<Dog>(context, listen: false).name}',
              style: const TextStyle(fontSize: 20),
            ),
            const SizedBox(height: 20),
            BreedAndAge(),
          ],
        ),
      ),
    );
  }
}
