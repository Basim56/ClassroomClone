import 'package:flutter/material.dart';
import 'package:google_classroom/data/dummy_classrooms.dart';

class HeaderClassroomLink extends StatelessWidget {
  const HeaderClassroomLink({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.zero,
      child: Column(
        children: dummyClassrooms.map((classroom) {
          return InkWell(
            onTap: () {
              classroom.onClassroomTap(context);
            },
            child: ListTile(
              title: Text(classroom.courseName),
              leading: Container(
                height: 22,
                width: 22,
                decoration: BoxDecoration(
                  color: classroom.headerIconColor,
                  borderRadius: BorderRadius.circular(100),
                ),
                child: Center(
                  child: Text(
                    classroom.courseName[6],
                    style: Theme.of(context).textTheme.titleMedium!.copyWith(
                        overflow: TextOverflow.ellipsis, color: Colors.white),
                  ),
                ),
              ),
            ),
          );
        }).toList(),
      ),
    );
  }
}
