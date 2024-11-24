import 'package:hive_flutter/hive_flutter.dart';

class ToDoDatabase {
  List toDoList = [];
  // reference the box
  final _myBox = Hive.box('mybox');

  // run this method if this is the first time opening this app
  void createInitialData() {
    toDoList = [
      ["Make cake", false],
      ["Make tutorial", false],
    ];
  }

  // load the data from the database
  void loadData() {
    toDoList = _myBox.get("TODOLIST");
  }

  // update the database
  void updateDataBase() {
    _myBox.put("TODOLIST", toDoList);
  }
}
