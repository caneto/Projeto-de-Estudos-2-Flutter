
import 'dart:convert';

import 'package:listadetarefas/models/todo.dart';
import 'package:shared_preferences/shared_preferences.dart';

const TodoListKey = "todo.list";

class TodoRepository {
  late SharedPreferences sharedPreferences;

  Future<List<Todo>> getTodoList() async {
    sharedPreferences = await SharedPreferences.getInstance();
    final String jsonString = sharedPreferences.getString(TodoListKey) ?? '[]';
    final List jsonDecoded = json.decode(jsonString) as List;
    return jsonDecoded.map((e) => Todo.fromJson(e)).toList();
  }

  void saveTodosList(List<Todo> todos) {
    final jsonString = json.encode(todos);
    sharedPreferences.setString(TodoListKey, jsonString);
  }
}