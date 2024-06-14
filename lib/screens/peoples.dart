import 'package:flutter/material.dart';
import 'package:google_classroom/data/dummy_classrooms.dart';
import 'package:google_classroom/widgets/classmates_list.dart';

class Peoples extends StatelessWidget {
  const Peoples({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        bottom: PreferredSize(
            preferredSize: Size.fromHeight(4.0),
            child: Container(
              height: 4.0,
              color: Colors.grey,
            )),
        title: Text(dummyClassrooms[0].courseName),
        actions: [
          // Icon(Icons.account_box_outlined),
          IconButton(
              onPressed: () {}, icon: const Icon(Icons.more_vert_rounded))
        ],
      ),
      body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 15,
                ),
                Text(
                  'Teachers',
                  style: Theme.of(context).textTheme.headlineSmall,
                ),
                const SizedBox(
                  height: 15,
                ),
                Container(
                  decoration: BoxDecoration(
                      border: Border.all(width: 0.7, color: Colors.black)),
                ),
                const SizedBox(
                  height: 15,
                ),
                ListTile(
                  contentPadding: EdgeInsets.zero,
                  leading: Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        color: Colors.cyan),
                    child: Center(
                      child: Text(
                        dummyClassrooms[0].teachersName[0],
                        style: Theme.of(context)
                            .textTheme
                            .titleMedium!
                            .copyWith(color: Colors.white),
                      ),
                    ),
                  ),
                  title: Text(dummyClassrooms[0].teachersName),
                ),
                const SizedBox(
                  height: 15,
                ),
                Text(
                  'Classmates',
                  style: Theme.of(context).textTheme.headlineSmall,
                ),
                const SizedBox(
                  height: 15,
                ),
                Container(
                  decoration: BoxDecoration(
                      border: Border.all(width: 0.7, color: Colors.black)),
                ),
                const SizedBox(
                  height: 15,
                ),
                const ClassmatesList()
              ],
            ),
          )),
    );
  }
}
