// ignore_for_file: avoid_print

import 'package:flutter/material.dart';

class AddTaskScreen extends StatelessWidget {
  const AddTaskScreen({super.key, required this.addTaskCallBack});

  final Function addTaskCallBack;

  @override
  Widget build(BuildContext context) {
    String? newTaskTitle;

    final screenWidth = MediaQuery.of(context).size.width;
    return Container(
      width: screenWidth,
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const Text(
            'Add Task',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.lightBlueAccent,
              fontSize: 30,
              fontWeight: FontWeight.w600,
            ),
          ),
          TextField(
            autofocus: true,
            decoration: const InputDecoration(
              border: UnderlineInputBorder(),
            ),
            onChanged: (newText) {
              newTaskTitle = newText;
            },
          ),
          const SizedBox(
            height: 30,
          ),
          TextButton(
            style: TextButton.styleFrom(
              foregroundColor: Colors.white,
              backgroundColor: Colors.lightBlueAccent,
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.zero,
              ),
            ),
            onPressed: () {
              addTaskCallBack(newTaskTitle);
            },
            child: const Text(
              'Add',
              style: TextStyle(fontSize: 20),
            ),
          )
        ],
      ),
    );
  }
}
