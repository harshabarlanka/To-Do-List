import 'package:hive_flutter/hive_flutter.dart';
class ToDoDatabase{
  List todoList = [];
  final _myBox = Hive.box('myBox');

  void createInitialData(){
    todoList = [
      ["Nannu Vadukora...🤦‍",false],
    ];
  }
  void loadData(){
    todoList = _myBox.get("TODOLIST");
  }
  void updateDataBase(){
    _myBox.put("TODOLIST", todoList);
  }
}