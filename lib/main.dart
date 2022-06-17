import 'package:flutter/material.dart';

import 'pages/done_page.dart';
import 'pages/future_page.dart';
import 'pages/todo_page.dart';

void main() {
  runApp(
    const MaterialApp(title: 'Todo App', home: MainPage()),
  );
}

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int currentIndex = 1;
  final screens = [
    DonePage(),
    TodoPage(),
    FuturePage(),
  ];
  bool _isTextFieldShown = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: currentIndex,
        children: screens,
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: (index) => setState(() => currentIndex = index),
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.black54,
        fixedColor: Colors.white,
        unselectedItemColor: Colors.white70,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.assignment_turned_in_rounded),
            label: 'Done',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.assignment_rounded),
            label: "Todo",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.refresh_rounded),
            label: 'Future Task',
          ),
        ],
      ),
    );
  }
}

/*class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  AnimatedSwitcher(
      duration: Duration(seconds: 1),
      child: _isTextFieldShown
          ? Scaffold(
              body: Padding(
                padding: EdgeInsets.fromLTRB(50, 200, 50, 200),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'What you need to',
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
              floatingActionButton: FloatingActionButton(
                child: Icon(Icons.arrow_back_rounded),
                backgroundColor: Colors.black,
                onPressed: () {
                  setState(() {
                    _isTextFieldShown = false;
                  });
                },
              ),
            )
          : Scaffold(
              appBar: AppBar(
                title: const Text('Welcome usbandit'),
                backgroundColor: Colors.black54,
                centerTitle: true,
              ),
              body: screens[currentIndex],
              bottomNavigationBar: BottomNavigationBar(
                currentIndex: currentIndex,
                onTap: (index) => setState(() => currentIndex = index),
                type: BottomNavigationBarType.fixed,
                backgroundColor: Colors.black54,
                fixedColor: Colors.white,
                unselectedItemColor: Colors.white70,
                items: const <BottomNavigationBarItem>[
                  BottomNavigationBarItem(
                    icon: Icon(Icons.assignment_turned_in_rounded),
                    label: 'Done',
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(Icons.assignment_rounded),
                    label: "Todo",
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(Icons.refresh_rounded),
                    label: 'Future Task',
                  ),
                ],
              ),
              floatingActionButton: FloatingActionButton(
                child: Icon(Icons.add),
                backgroundColor: Colors.black,
                onPressed: () {
                  setState(() {
                    _isTextFieldShown = true;
                  });
                },
              ),
            ),
    );
*/
