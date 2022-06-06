import 'package:flutter/material.dart';

void main() {
  runApp(
    const MaterialApp(title: 'Todo App', home: DonePage()),
  );
}

class DonePage extends StatefulWidget {
  const DonePage({Key? key}) : super(key: key);

  @override
  State<DonePage> createState() => _DonePageState();
}

class _DonePageState extends State<DonePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text('fuck'),
      appBar: AppBar(
        title: const Text('Welcome usbandit'),
        backgroundColor: Colors.black54,
        centerTitle: true,
      ),
    );
  }
}
