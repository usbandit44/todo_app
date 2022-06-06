import 'package:flutter/material.dart';

void main() {
  runApp(
    const MaterialApp(title: 'Todo App', home: FuturePage()),
  );
}

class FuturePage extends StatefulWidget {
  const FuturePage({Key? key}) : super(key: key);

  @override
  State<FuturePage> createState() => _FuturePageState();
}

class _FuturePageState extends State<FuturePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text("nigga"),
      appBar: AppBar(
        title: const Text('Welcome usbandit'),
        backgroundColor: Colors.black54,
        centerTitle: true,
      ),
    );
  }
}
