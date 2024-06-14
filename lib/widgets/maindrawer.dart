import 'package:flutter/material.dart';
import 'package:google_classroom/screens/home.dart';
import 'package:google_classroom/screens/todos.dart';
import 'package:google_classroom/widgets/header_classroom_link.dart';

class MainDrawer extends StatelessWidget {
  const MainDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 35),
              child: Container(
                width: double.infinity,
                padding: EdgeInsets.zero, // Remove padding
                child: Container(
                  width: double.infinity,
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  decoration: const BoxDecoration(
                    border: Border(
                      bottom: BorderSide(width: 1, color: Colors.grey),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: Row(
                      children: [
                        Text.rich(
                          TextSpan(
                            text: 'G',
                            style: Theme.of(context)
                                .textTheme
                                .titleLarge!
                                .copyWith(color: Colors.blue),
                            children: [
                              TextSpan(
                                text: 'o',
                                style: Theme.of(context)
                                    .textTheme
                                    .titleLarge!
                                    .copyWith(color: Colors.red),
                              ),
                              TextSpan(
                                text: 'o',
                                style: Theme.of(context)
                                    .textTheme
                                    .titleLarge!
                                    .copyWith(
                                        color: Colors.yellow,
                                        fontWeight: FontWeight.bold),
                              ),
                              TextSpan(
                                text: 'g',
                                style: Theme.of(context)
                                    .textTheme
                                    .titleLarge!
                                    .copyWith(color: Colors.blue),
                              ),
                              TextSpan(
                                text: 'l',
                                style: Theme.of(context)
                                    .textTheme
                                    .titleLarge!
                                    .copyWith(color: Colors.green),
                              ),
                              TextSpan(
                                text: 'e',
                                style: Theme.of(context)
                                    .textTheme
                                    .titleLarge!
                                    .copyWith(color: Colors.red),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          width: 8,
                        ),
                        Text(
                          'Classroom',
                          style: Theme.of(context)
                              .textTheme
                              .titleMedium!
                              .copyWith(
                                fontSize: 20,
                                color: const Color.fromARGB(255, 90, 87, 87),
                              ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (ctx) => const HomeScreen()));
              },
              child: const ListTile(
                leading: Icon(
                  Icons.home_outlined,
                  size: 25,
                ),
                title: Text('Classes'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 3),
              child: InkWell(
                onTap: () {},
                child: const ListTile(
                  leading: Icon(
                    Icons.calendar_today,
                    size: 20,
                  ),
                  title: Text('Calendar'),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 2),
              child: InkWell(
                onTap: () {},
                child: const ListTile(
                  leading: Icon(Icons.notifications_outlined),
                  title: Text('Notifications'),
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(left: 58, top: 10),
              decoration: const BoxDecoration(
                  border:
                      Border(bottom: BorderSide(width: 1, color: Colors.grey))),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20, right: 200),
              child: Text(
                "ENROLLED",
                style: Theme.of(context).textTheme.titleSmall!.copyWith(
                    fontSize: 12,
                    // color: Colors.grey,
                    fontWeight: FontWeight.bold),
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (ctx) => TodosScreen()));
              },
              child: const ListTile(
                leading: Icon(Icons.library_add_check),
                title: Text('To do'),
              ),
            ),
            const HeaderClassroomLink(),
            Container(
              margin: const EdgeInsets.only(left: 58, top: 10),
              decoration: const BoxDecoration(
                  border:
                      Border(bottom: BorderSide(width: 1, color: Colors.grey))),
            ),
            InkWell(
              onTap: () {},
              child: const ListTile(
                leading: Icon(Icons.check_circle_outline_outlined),
                title: Text('Offline files'),
              ),
            ),
            InkWell(
              onTap: () {},
              child: const ListTile(
                leading: Icon(Icons.archive_outlined),
                title: Text('Archived classes'),
              ),
            ),
            InkWell(
              onTap: () {},
              child: const ListTile(
                leading: Icon(Icons.folder_outlined),
                title: Text('Classroom folders'),
              ),
            ),
            InkWell(
              onTap: () {},
              child: const ListTile(
                leading: Icon(Icons.settings_outlined),
                title: Text('Settings'),
              ),
            ),
            InkWell(
              onTap: () {},
              child: const ListTile(
                leading: Icon(Icons.help_outline),
                title: Text('Help'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
