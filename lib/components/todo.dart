import 'package:flutter/material.dart';

class Todo extends StatelessWidget {
  final bool isChecked;
  final String title;
  final Function handleCheckbox;
  final Function removeTask;
  Todo({this.isChecked, this.title, this.handleCheckbox, this.removeTask});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: removeTask,
      title: Text(title),
      trailing: Checkbox(
        value: isChecked,
        onChanged: handleCheckbox,
      ),
    );
  }
}
