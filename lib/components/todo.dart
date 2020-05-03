import 'package:flutter/material.dart';

class Todo extends StatelessWidget {
  final bool isChecked;
  final String title;
  final Function handleCheckbox;
  Todo({this.isChecked, this.title, this.handleCheckbox});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(title),
      trailing: Checkbox(
        value: isChecked,
        onChanged: handleCheckbox,
      ),
    );
  }
}
