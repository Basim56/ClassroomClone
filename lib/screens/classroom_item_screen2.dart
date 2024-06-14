import 'package:flutter/material.dart';

class ClassroomItemScreen2 extends StatelessWidget {
  const ClassroomItemScreen2({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(
        'Class Comments',
        style: Theme.of(context).textTheme.titleLarge,
      )),
      body: Column(
        children: [
          const Spacer(),
          TextFormField(
            decoration: const InputDecoration(labelText: 'Class comment'),
            autofocus:
                true, // Automatically focus the TextFormField when it appears
          ),
        ],
      ),
    );
  }
}
