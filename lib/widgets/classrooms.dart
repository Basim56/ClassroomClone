import 'package:flutter/material.dart';
import 'package:google_classroom/data/dummy_classrooms.dart';

class Classrooms extends StatelessWidget {
  const Classrooms({super.key});
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemCount: dummyClassrooms.length,
        itemBuilder: (ctx, index) {
          final classroom = dummyClassrooms[index];
          return InkWell(
            onTap: () {
              dummyClassrooms[index].onClassroomTap(context);
            },
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              margin: const EdgeInsets.symmetric(vertical: 5),
              width: double.infinity,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(classroom.classroomBackGroundImage),
                      fit: BoxFit.cover),
                  borderRadius: BorderRadius.circular(6)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    classroom.courseName,
                    style: Theme.of(context).textTheme.titleLarge!.copyWith(
                        color: Colors.white, overflow: TextOverflow.ellipsis),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    classroom.section,
                    style: Theme.of(context)
                        .textTheme
                        .titleMedium!
                        .copyWith(color: Colors.white),
                  ),
                  // const SizedBox(
                  //   height: 10,
                  // ),
                  Text(
                    classroom.teachersName,
                    style: Theme.of(context)
                        .textTheme
                        .titleMedium!
                        .copyWith(color: Colors.white),
                  ),
                ],
              ),
            ),
          );
        });
  }
}
