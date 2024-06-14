import 'package:flutter/material.dart';
import 'package:google_classroom/screens/classroom1.dart';
import 'package:google_classroom/screens/classroom2.dart';
import 'package:google_classroom/screens/classroom3.dart';
import 'package:google_classroom/screens/classroom4.dart';
import 'package:google_classroom/screens/classroom5.dart';
import 'package:google_classroom/screens/classroom6.dart';
import 'package:google_classroom/screens/classwork.dart';
import 'package:google_classroom/screens/peoples.dart';

class ClassroomTabs extends StatefulWidget {
  const ClassroomTabs({super.key, required this.selectedClassroom});

  final String selectedClassroom;

  @override
  State<ClassroomTabs> createState() => _ClassroomTabsState();
}

class _ClassroomTabsState extends State<ClassroomTabs> {
  int _currentIndex = 0;
  var classroom;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    classroom = widget.selectedClassroom;
  }

  void _changeCurrentIndex(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    Widget currentScreen;
    switch (_currentIndex) {
      case 1:
        currentScreen = const Classwork();
        break;
      case 2:
        currentScreen = const Peoples();
        break;
      case 0:
      default:
        if (classroom == 'classroom1') {
          currentScreen = const Classroom1();
        } else if (classroom == 'classroom2') {
          currentScreen = const Classroom2();
        } else if (classroom == 'classroom3') {
          currentScreen = const Classroom3();
        } else if (classroom == 'classroom4') {
          currentScreen = const Classroom4();
        } else if (classroom == 'classroom5') {
          currentScreen = const Classroom5();
        } else {
          currentScreen = const Classroom6();
        }
        break;
    }
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
          onTap: (value) {
            _changeCurrentIndex(value);
          },
          selectedItemColor: Colors.black,
          currentIndex: _currentIndex,
          items: const [
            BottomNavigationBarItem(
                icon: Icon(Icons.library_books), label: 'Streams'),
            BottomNavigationBarItem(
                icon: Icon(Icons.assignment), label: 'Classwork'),
            BottomNavigationBarItem(icon: Icon(Icons.people), label: 'People'),
          ]),
      body: currentScreen,
    );
  }
}
