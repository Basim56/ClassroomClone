import 'package:flutter/material.dart';
import 'package:google_classroom/data/dummy_task.dart';

class AssignedTaskItems extends StatelessWidget {
  const AssignedTaskItems({super.key});
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemCount: dummyTasks.length,
        itemBuilder: (ctx, index) {
          return ListTile(
            leading: Container(
              height: 40,
              width: 40,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  color: Colors.orange),
              child: const Center(
                child: Icon(Icons.assignment),
              ),
            ),
            title: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  dummyTasks[index].assDetails,
                  style: Theme.of(context)
                      .textTheme
                      .titleMedium!
                      .copyWith(color: Colors.black),
                ),
                const SizedBox(
                  height: 5,
                ),
                Text(
                  dummyTasks[index].postedBy,
                  style: Theme.of(context)
                      .textTheme
                      .titleSmall!
                      .copyWith(color: Colors.grey),
                ),
              ],
            ),
            subtitle: Text(dummyTasks[index].formattedDate),
          );
        });
  }
}
