import 'package:flutter/material.dart';
import 'package:google_classroom/model/classroom_item.dart';

class ClassroomItemScreen extends StatefulWidget {
  const ClassroomItemScreen({super.key, required this.classroomItem});
  final ClassroomItem classroomItem;
  @override
  State<ClassroomItemScreen> createState() => _ClassroomItemScreenState();
}

class _ClassroomItemScreenState extends State<ClassroomItemScreen> {
  bool _isTextFieldVisible = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
              onPressed: () {}, icon: const Icon(Icons.more_vert_rounded))
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 19),
        child: Column(
          children: [
            Container(
              alignment: Alignment.topLeft,
              child: Text(
                widget.classroomItem.documentName,
                style: Theme.of(context)
                    .textTheme
                    .titleLarge!
                    .copyWith(color: Colors.black, fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            Container(
              decoration: BoxDecoration(
                  border: Border.all(width: 1, color: Colors.black)),
            ),
            const SizedBox(
              height: 40,
            ),
            Container(
              alignment: Alignment.topLeft,
              child: Text(
                'Attachments',
                style: Theme.of(context)
                    .textTheme
                    .titleMedium!
                    .copyWith(color: Colors.black, fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            Container(
              padding: EdgeInsets.symmetric(vertical: 10),
              width: double.infinity,
              decoration: BoxDecoration(
                  border: Border.all(width: 0.6, color: Colors.grey)),
              child: Center(
                  child: Text(
                'Save all files offline',
                style: Theme.of(context).textTheme.titleMedium!.copyWith(
                    color: const Color.fromARGB(255, 58, 146, 217),
                    fontWeight: FontWeight.bold),
              )),
            ),
            const SizedBox(
              height: 40,
            ),
            Container(
              decoration: BoxDecoration(
                  border: Border.all(width: 1, color: Colors.grey)),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              alignment: Alignment.topLeft,
              child: Text(
                'Class comments',
                style: Theme.of(context)
                    .textTheme
                    .titleMedium!
                    .copyWith(color: Colors.black, fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            if (!_isTextFieldVisible)
              InkWell(
                onTap: () {
                  setState(() {
                    _isTextFieldVisible = true;
                  });
                },
                child: Container(
                  alignment: Alignment.topLeft,
                  // padding: const EdgeInsets.all(8.0),
                  // decoration: BoxDecoration(
                  //   border: Border.all(color: Colors.grey),
                  //   borderRadius: BorderRadius.circular(8.0),
                  // ),
                  child: Text(
                    'Save all files offline',
                    style: Theme.of(context)
                        .textTheme
                        .titleMedium!
                        .copyWith(color: Colors.grey),
                  ),
                ),
              )
            else
              TextFormField(
                decoration: const InputDecoration(labelText: 'Class comment'),
                autofocus:
                    true, // Automatically focus the TextFormField when it appears
                onFieldSubmitted: (value) {
                  setState(() {
                    _isTextFieldVisible = false;
                  });
                },
              ),
          ],
        ),
      ),
    );
  }
}
