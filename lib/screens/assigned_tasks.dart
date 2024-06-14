import 'package:flutter/material.dart';
import 'package:google_classroom/widgets/assigned_task_items.dart';

class AssignedTasks extends StatefulWidget {
  const AssignedTasks({super.key});

  @override
  State<AssignedTasks> createState() => _AssignedTasksState();
}

class _AssignedTasksState extends State<AssignedTasks> {
  bool areTasksVisible = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15.0),
      child: SingleChildScrollView(
        child: Column(
          children: [
            // The first InkWell that should not toggle the tasks

            // The InkWell that toggles the visibility of tasks
            InkWell(
              onTap: () {
                setState(() {
                  areTasksVisible = !areTasksVisible;
                });
              },
              child: Container(
                margin: EdgeInsets.symmetric(vertical: 15),
                child: Row(
                  children: [
                    Text(
                      'No due date',
                      style: Theme.of(context)
                          .textTheme
                          .titleLarge!
                          .copyWith(color: Colors.black, fontSize: 20),
                    ),
                    const Spacer(),
                    Text(
                      '4',
                      style: Theme.of(context).textTheme.titleMedium!.copyWith(
                          color: const Color.fromARGB(255, 38, 35, 133)),
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    Icon(
                      areTasksVisible
                          ? Icons.arrow_drop_up
                          : Icons.arrow_drop_down,
                      size: 40,
                    )
                  ],
                ),
              ),
            ),

            if (areTasksVisible) AssignedTaskItems(), // Repla

            // Additional InkWell widgets (not toggling visibility)
            InkWell(
              onTap: () {},
              child: Container(
                margin: EdgeInsets.symmetric(vertical: 15),
                child: Row(
                  children: [
                    Text(
                      'This week',
                      style: Theme.of(context)
                          .textTheme
                          .titleLarge!
                          .copyWith(color: Colors.black, fontSize: 20),
                    ),
                    const Spacer(),
                    Text(
                      '0',
                      style: Theme.of(context).textTheme.titleMedium!.copyWith(
                          color: const Color.fromARGB(255, 38, 35, 133)),
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    const Icon(
                      Icons.arrow_drop_down,
                      size: 40,
                    )
                  ],
                ),
              ),
            ),
            InkWell(
              onTap: () {},
              child: Container(
                margin: EdgeInsets.symmetric(vertical: 15),
                child: Row(
                  children: [
                    Text(
                      'Next week',
                      style: Theme.of(context)
                          .textTheme
                          .titleLarge!
                          .copyWith(color: Colors.black, fontSize: 20),
                    ),
                    const Spacer(),
                    Text(
                      '0',
                      style: Theme.of(context).textTheme.titleMedium!.copyWith(
                          color: const Color.fromARGB(255, 38, 35, 133)),
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    const Icon(
                      Icons.arrow_drop_down,
                      size: 40,
                    )
                  ],
                ),
              ),
            ),
            InkWell(
              onTap: () {},
              child: Container(
                margin: EdgeInsets.symmetric(vertical: 15),
                child: Row(
                  children: [
                    Text(
                      'Later',
                      style: Theme.of(context)
                          .textTheme
                          .titleLarge!
                          .copyWith(color: Colors.black, fontSize: 20),
                    ),
                    const Spacer(),
                    Text(
                      '0',
                      style: Theme.of(context).textTheme.titleMedium!.copyWith(
                          color: const Color.fromARGB(255, 38, 35, 133)),
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    const Icon(
                      Icons.arrow_drop_down,
                      size: 40,
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
