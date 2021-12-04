import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Calculator',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Calculator test'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text('Insert due date'),
              ),
              TextField(),
              DecoratedBox(
                decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.secondary),
                child: const Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Text('test'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
