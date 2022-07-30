import 'package:flutter/material.dart';
import 'package:listadetarefas/widgets/todo_list_item.dart';

class TodoListaPage extends StatefulWidget {
  TodoListaPage({Key? key}) : super(key: key);

  @override
  State<TodoListaPage> createState() => _TodoListaPageState();
}

class _TodoListaPageState extends State<TodoListaPage> {
  final TextEditingController todoController = TextEditingController();

  List<String> todos = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Center(
          child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: todoController,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: "Adicione uma tarefa",
                      hintText: "Ex: Digitar dados",
                    ),
                  ),
                ),
                const SizedBox(
                  width: 8,
                ),
                ElevatedButton(
                  onPressed: () {
                    String text = todoController.text;
                    setState(() {
                      todos.add(text);
                    });
                    todoController.clear();
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Color(0xff00d7f3),
                    padding: EdgeInsets.all(14),
                  ),
                  child: Icon(
                    Icons.add,
                    size: 30,
                  ),
                )
              ],
            ),
            const SizedBox(height: 16,),
            Flexible(
              child: ListView(
                shrinkWrap: true,
                children: [
                for(String todo in todos)
                  TodoListItem()
                ],
              ),
            ),
            SizedBox(height: 16,),
            Row(
            children: [
              const Expanded(
                child:
                  Text(
                    "Você não tem tarefas",
                  ),
              ),
              ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    primary: Color(0xff00d7f3),
                    padding: EdgeInsets.all(14),
                  ),
                  child: Text("Limpar tudo"),
              )],
            ),
          ]),
        )
      ),
    );
  }
}
