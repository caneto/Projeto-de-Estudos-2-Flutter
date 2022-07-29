import 'package:flutter/material.dart';

class TudoListaPage extends StatelessWidget {
  const TudoListaPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Center(
            child: Row(
          children: [
            Expanded(
              child: const TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "Adicione uma tarefa",
                  hintText: "Ex: Digitar dados",
                ),
              ),
            ),
            SizedBox(
              width: 8,
            ),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                primary: Color(0xff00d7f3),
                padding: EdgeInsets.all(14)
              ),
              child: Icon(
                Icons.add,
                size: 30,
              ),
            )
          ],
        )),
      ),
    );
  }
}
