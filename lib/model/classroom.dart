import 'package:flutter/material.dart';
import 'package:uuid/uuid.dart';

const uuid = Uuid();

class Classroom {
  final String id;
  final String courseName;
  final String classroomBackGroundImage;
  final String section;
  final String teachersName;
  final void Function(BuildContext context) onClassroomTap;
  final Color headerIconColor;

  Classroom(
      {required this.courseName,
      required this.classroomBackGroundImage,
      required this.section,
      required this.teachersName,
      required this.onClassroomTap,
      required this.headerIconColor})
      : id = uuid.v4();
}
