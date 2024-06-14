import 'package:flutter/material.dart';
import 'package:google_classroom/model/classroom.dart';
import 'package:google_classroom/screens/classroom_tabs.dart';

final dummyClassrooms = [
  Classroom(
      courseName: 'SP-24 Artifical Intelligence',
      classroomBackGroundImage:
          'https://www.freewebheaders.com/wp-content/gallery/computer/computer-technology-business-website-header.jpg',
      section: 'BM',
      teachersName: 'Zain Noreen',
      onClassroomTap: (BuildContext context) {
        Navigator.of(context).push(MaterialPageRoute(
            builder: (ctx) => const ClassroomTabs(
                  selectedClassroom: 'classroom1',
                )));
      },
      headerIconColor: Colors.black),
  Classroom(
      courseName: 'SP-24 Professional Issues In Computing',
      classroomBackGroundImage:
          'https://www.freewebheaders.com/wp-content/gallery/high-tech-hero-headers/cache/blue-neon-cubes-technology-transfer-hero-header.jpg-nggid045221-ngg0dyn-1920x1080x100-00f0w010c010r110f110r010t010.jpg',
      section: 'AM',
      teachersName: 'Ayaz Hussain',
      onClassroomTap: (BuildContext context) {
        Navigator.of(context).push(MaterialPageRoute(
            builder: (ctx) => const ClassroomTabs(
                  selectedClassroom: 'classroom2',
                )));
      },
      headerIconColor: Colors.blue),
  Classroom(
      courseName: 'SP-24 Compiler Construction',
      classroomBackGroundImage:
          'https://www.freewebheaders.com/wp-content/gallery/computer/future-computer-keyboard-keys-web-header.jpg',
      section: 'FM',
      teachersName: 'Amir Sheikh',
      onClassroomTap: (BuildContext context) {
        Navigator.of(context).push(MaterialPageRoute(
            builder: (ctx) => const ClassroomTabs(
                  selectedClassroom: 'classroom3',
                )));
      },
      headerIconColor: const Color.fromARGB(121, 225, 150, 145)),
  Classroom(
      courseName: 'SP-24 Data Science',
      classroomBackGroundImage:
          'https://www.freewebheaders.com/wp-content/gallery/high-tech-hero-headers/colorful-electricity-technology-background-hero-header.jpg',
      section: 'DM',
      teachersName: 'Abdul Qadar Kara',
      onClassroomTap: (BuildContext context) {
        Navigator.of(context).push(MaterialPageRoute(
            builder: (ctx) => const ClassroomTabs(
                  selectedClassroom: 'classroom4',
                )));
      },
      headerIconColor: Color.fromARGB(186, 74, 211, 150)),
  Classroom(
      courseName: 'SP-24 Data Communication and Networking',
      classroomBackGroundImage:
          'https://e0.pxfuel.com/wallpapers/554/246/desktop-wallpaper-effective-effective-effective-communication-and-effective-fabric-digital-communication.jpg',
      section: 'DM',
      teachersName: 'Tahir Ayub',
      onClassroomTap: (BuildContext context) {
        Navigator.of(context).push(MaterialPageRoute(
            builder: (ctx) => const ClassroomTabs(
                  selectedClassroom: 'classroom5',
                )));
      },
      headerIconColor: Color.fromARGB(121, 201, 224, 71)),
  Classroom(
      courseName: 'SP-24 Cyber Security and Forensics',
      classroomBackGroundImage:
          'https://static.vecteezy.com/system/resources/previews/006/198/869/large_2x/internet-security-protection-from-hacker-attacking-cyber-attack-and-network-security-concept-free-photo.jpg',
      section: 'CM',
      teachersName: 'Muhammad Ataullah',
      onClassroomTap: (BuildContext context) {
        Navigator.of(context).push(MaterialPageRoute(
            builder: (ctx) => const ClassroomTabs(
                  selectedClassroom: 'classroom6',
                )));
      },
      headerIconColor: Color.fromARGB(121, 163, 111, 186)),
];
