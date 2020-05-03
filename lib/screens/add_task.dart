import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoapp/models/todo_data.dart';

class AddTodo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String newTask;
    return Container(
      padding: EdgeInsets.all(15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Text(
            'Add Todo',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w700,
              color: Colors.blueAccent,
            ),
          ),
          TextField(
            textAlign: TextAlign.center,
            autofocus: true,
            onChanged: (value) {
              newTask = value;
            },
          ),
          FlatButton(
            color: Colors.blueAccent,
            child: Text(
              'Add'.toUpperCase(),
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w700,
                fontSize: 20,
              ),
            ),
            onPressed: () {
              Provider.of<TodoData>(context, listen: false).addNewTask(newTask);
              Navigator.pop(context);
            },
          )
        ],
      ),
    );
  }
}
