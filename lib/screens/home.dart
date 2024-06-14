import 'package:flutter/material.dart';
import 'package:google_classroom/screens/join_class.dart';
import 'package:google_classroom/screens/todos.dart';
import 'package:google_classroom/widgets/classrooms.dart';
import 'package:google_classroom/widgets/maindrawer.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Container(
        width: 60,
        height: 60,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(100), color: Colors.white),
        child: Center(
          child: IconButton(
              onPressed: () {
                showModalBottomSheet(
                  context: context,
                  builder: (context) {
                    return Container(
                      // alignment: Alignment.topRight,
                      width: double.infinity,
                      child: TextButton(
                          onPressed: () {
                            Navigator.of(context).pop();
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (ctx) => JoinClass()));
                          },
                          child: const Text('Join Class')),
                    );
                  },
                );
              },
              icon: Icon(Icons.add)),
        ),
      ),
      drawer: const MainDrawer(),
      appBar: AppBar(
          backgroundColor: Colors.white,
          bottom: PreferredSize(
            preferredSize:
                Size.fromHeight(4.0), // The height of the bottom border
            child: Container(
              color: Colors.grey, // The color of the bottom border
              height: 4.0, // The height of the bottom border
            ),
          ),
          title: Text.rich(TextSpan(
              text: 'Google',
              style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                  color: Color.fromARGB(255, 90, 87, 87),
                  fontWeight: FontWeight.bold),
              children: [
                TextSpan(
                  text: ' Classroom',
                  style: Theme.of(context).textTheme.titleMedium!.copyWith(
                        fontSize: 20,
                        color: Color.fromARGB(255, 90, 87, 87),
                      ),
                ),
              ])),
          actions: [
            Row(
              children: [
                Container(
                  height: 30,
                  width: 30,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      color: Colors.blueAccent),
                  child: Center(
                    child: Text(
                      'B',
                      style: Theme.of(context)
                          .textTheme
                          .titleMedium!
                          .copyWith(color: Colors.white),
                    ),
                  ),
                ),
                IconButton(
                    onPressed: () {}, icon: const Icon(Icons.more_vert_rounded))
              ],
            ),
          ]),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                width: double.infinity,
                decoration: BoxDecoration(
                    border: Border.all(width: 0.7, color: Colors.grey),
                    borderRadius: BorderRadius.circular(12)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text('This week',
                            style: Theme.of(context).textTheme.titleLarge),
                        Spacer(),
                        TextButton(
                            onPressed: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (ctx) => TodosScreen()));
                            },
                            child: Text('View to-do list',
                                style: Theme.of(context)
                                    .textTheme
                                    .titleMedium!
                                    .copyWith(color: Colors.blueAccent)))
                      ],
                    ),
                    Row(
                      children: [
                        Text(
                          '0',
                          style: Theme.of(context).textTheme.titleLarge,
                        ),
                        const SizedBox(
                          width: 7,
                        ),
                        Text('assigned',
                            style: Theme.of(context).textTheme.titleSmall),
                        const SizedBox(
                          width: 10,
                        ),
                        Text(
                          '1',
                          style: Theme.of(context).textTheme.titleLarge,
                        ),
                        const SizedBox(
                          width: 7,
                        ),
                        Text('missed',
                            style: Theme.of(context).textTheme.titleSmall),
                      ],
                    )
                  ],
                ),
              ),
              Classrooms()
            ],
          ),
        ),
      ),
    );
  }
}
