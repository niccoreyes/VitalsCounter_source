import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _myApp createState() => _myApp();
}

class _myApp extends State<MyApp> {
  String dateDue = "august";

  void calculateDueDate() {
    setState(() {
      dateDue = "summer";
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Calculator test'),
        ),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Spacer(),
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text('Insert due date'),
                ),
                TextField(),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text('Due: $dateDue'),
                ),
                const Spacer()
              ],
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: calculateDueDate,
          child: const Icon(Icons.check),
        ),
      ),
    );
  }
}
