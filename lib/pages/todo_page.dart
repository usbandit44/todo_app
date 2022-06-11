import 'package:flutter/material.dart';

void main() {
  runApp(
    const MaterialApp(title: 'Todo App', home: TodoPage()),
  );
}

class TodoPage extends StatefulWidget {
  const TodoPage({Key? key}) : super(key: key);

  @override
  State<TodoPage> createState() => _TodoPageState();
}

class _TodoPageState extends State<TodoPage> {
  bool _crossFadeState = true;
  bool _isVisable = true;
  final _textController = TextEditingController();
  String userTodo = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Welcome usbandit'),
        backgroundColor: Colors.black54,
        centerTitle: true,
      ),
      body: AnimatedCrossFade(
        firstChild: Container(
          color: Colors.amber[600],
          alignment: Alignment.center,
          child: Text(userTodo),
        ),
        secondChild: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Padding(
              padding: EdgeInsets.fromLTRB(50, 200, 50, 0),
              child: TextField(
                controller: _textController,
                decoration: InputDecoration(
                  hintText: 'What you need to',
                  border: OutlineInputBorder(),
                  suffixIcon: IconButton(
                    onPressed: () {
                      _textController.clear();
                    },
                    icon: Icon(Icons.clear),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 0, 50, 0),
              child: ElevatedButton(
                onPressed: () {
                  setState(() {
                    _crossFadeState = true;
                    _isVisable = true;
                    userTodo = _textController.text;
                  });
                },
                child: const Text('Done'),
              ),
            ),
          ],
        ),
        crossFadeState: _crossFadeState
            ? CrossFadeState.showFirst
            : CrossFadeState.showSecond,
        duration: Duration(seconds: 1),
      ),
      floatingActionButton: Visibility(
        child: FloatingActionButton(
          child: Icon(Icons.add),
          backgroundColor: Colors.black,
          onPressed: () {
            setState(
              () {
                _crossFadeState = false;
                _isVisable = false;
              },
            );
          },
        ),
        visible: _isVisable ? true : false,
      ),
    );
  }
}
