import 'package:flutter/material.dart';
import 'package:google_classroom/widgets/assigned_task_items.dart';

class DoneTasks extends StatefulWidget {
  const DoneTasks({super.key});

  @override
  State<DoneTasks> createState() => _AssignedTasksState();
}

class _AssignedTasksState extends State<DoneTasks> {
  bool areTasksVisible = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15.0),
      child: SingleChildScrollView(
        child: Column(
          children: [
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

            if (areTasksVisible) const AssignedTaskItems(),
            InkWell(
              onTap: () {},
              child: Container(
                margin: EdgeInsets.symmetric(vertical: 15),
                child: Row(
                  children: [
                    Text(
                      'Done early',
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
                      'Last week',
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
                      'Earlier',
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
            // Repla

            // Additional InkWell widgets (not toggling visibility)
          ],
        ),
      ),
    );
  }
}
