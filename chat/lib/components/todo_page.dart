import 'package:flutter/material.dart';

import 'package:chat/components/todo_services.dart';
import 'package:chat/components/todo_data.dart';

class TodoPage extends StatefulWidget {
  @override
  _TodoPageState createState() => _TodoPageState();
}

class _TodoPageState extends State<TodoPage> {
  List<Todo> _todos;
  bool _loading;
  bool _hasError;

  @override
  void initState() {
    super.initState();
    _loading = true;
    TodoServices.getTodos().then((todos) {
      setState(() {
        _todos = todos;
        _loading = false;
        _hasError = false;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: _loading
            ? Center(child: CircularProgressIndicator())
            : ListView.builder(
                itemCount: null == _todos ? 0 : _todos.length,
                itemBuilder: (cotext, index) {
                  Todo todo = _todos[index];
                  return ListTile(
                    title: Text(todo.title),
                  );
                },
              ));
  }
}
