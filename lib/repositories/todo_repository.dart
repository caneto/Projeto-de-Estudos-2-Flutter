
import 'dart:convert';

import 'package:listadetarefas/models/todo.dart';
import 'package:shared_preferences/shared_preferences.dart';

class TodoRepository {

  TodoRepository() {
    SharedPreferences.getInstance().then((value) => sharedPreferences = value);
  }

  late SharedPreferences sharedPreferences;

  void saveTodosList(List<Todo> todos) {
    final jsonString = json.encode(todos);
    sharedPreferences.setString("todo.list", jsonString);
    print(jsonString);
  }
}