import 'package:flutter/material.dart';
import 'package:todoapp/components/todo_list.dart';
import 'package:todoapp/models/task.dart';
import 'package:todoapp/screens/add_task.dart';

class TodoTasks extends StatefulWidget {
  @override
  _TodoTasksState createState() => _TodoTasksState();
}

class _TodoTasksState extends State<TodoTasks> {
  List<Task> tasks = [
    Task(title: 'Todo item 1'),
    Task(title: 'Todo item 2'),
    Task(title: 'Todo item 3'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueAccent,
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.blueAccent,
        child: Icon(
          Icons.add,
          color: Colors.white,
        ),
        onPressed: () {
          showModalBottomSheet(
            context: context,
            builder: (BuildContext context) => AddTodo((newTask) {
              setState(() {
                tasks.add(Task(title: newTask));
              });
              Navigator.pop(context);
            }),
          );
        },
      ),
      body: Container(
        padding: EdgeInsets.only(
          top: 60,
        ),
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                padding: EdgeInsets.only(left: 30, bottom: 30),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    CircleAvatar(
                      backgroundColor: Colors.white,
                      child: Icon(
                        Icons.list,
                        size: 30,
                        color: Colors.blueAccent,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      'Todoey',
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.w700,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Container(
                  height: 200,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(30),
                      topLeft: Radius.circular(30),
                    ),
                  ),
                  child: TodoList(tasks),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
