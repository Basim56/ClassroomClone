import 'package:flutter/material.dart';
import 'package:google_classroom/screens/assigned_tasks.dart';
import 'package:google_classroom/screens/done_tasks.dart';
import 'package:google_classroom/screens/missing_tasks.dart';

class TodosScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 3, // Number of tabs
        child: Scaffold(
          appBar: AppBar(
            actions: [
              IconButton(
                  onPressed: () {}, icon: const Icon(Icons.more_vert_rounded))
            ],
            leading: IconButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                icon: const Icon(Icons.close)),
            title: const Text('To do'),
            bottom: TabBar(
              indicatorColor: const Color.fromARGB(255, 38, 35, 133),
              labelColor: const Color.fromARGB(255, 38, 35, 133),
              labelStyle: Theme.of(context).textTheme.titleMedium,
              tabs: const [
                Tab(text: 'Assigned'),
                Tab(text: 'Missing'),
                Tab(text: 'Done'),
              ],
            ),
          ),
          body: const TabBarView(
            children: [
              AssignedTasks(),
              MissedTasks(),
              DoneTasks(),
            ],
          ),
        ),
      ),
    );
  }
}
