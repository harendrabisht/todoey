import 'package:flutter/material.dart';

class AddTodo extends StatelessWidget {
  final Function handleAddTask;
  AddTodo(this.handleAddTask);
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
              handleAddTask(newTask);
            },
          )
        ],
      ),
    );
  }
}
