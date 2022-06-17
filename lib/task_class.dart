class Tasks {
  //field
  var todoList = <String>[];
  var futureList = <String>[];
  var doneList = <String>[];

  //constructor
  Tasks();

  //methods
  void addTask(String task) {
    todoList.add(task);
  }

  String toString() {
    String printList = '';
    for (var i = 0; i < todoList.length; i++) {
      printList += todoList[i] + '\n';
    }
    return printList;
  }
}
