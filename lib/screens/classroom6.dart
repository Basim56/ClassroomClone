import 'package:flutter/material.dart';
import 'package:google_classroom/data/dummy_classrooms.dart';
import 'package:google_classroom/screens/addpost.dart';
import 'package:google_classroom/widgets/classroom_items.dart';
import 'package:google_classroom/widgets/maindrawer.dart';

class Classroom6 extends StatelessWidget {
  const Classroom6({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MainDrawer(),
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
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 4),
          child: Column(
            children: [
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                margin: const EdgeInsets.symmetric(vertical: 5),
                width: double.infinity,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: NetworkImage(
                            dummyClassrooms[5].classroomBackGroundImage),
                        fit: BoxFit.cover),
                    borderRadius: BorderRadius.circular(6)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 50,
                    ),
                    Text(
                      dummyClassrooms[5].courseName,
                      style: Theme.of(context).textTheme.titleLarge!.copyWith(
                          color: Colors.white, overflow: TextOverflow.ellipsis),
                    ),
                    Text(dummyClassrooms[5].section,
                        style: Theme.of(context)
                            .textTheme
                            .titleMedium!
                            .copyWith(color: Colors.white))
                  ],
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              Container(
                padding: const EdgeInsets.symmetric(vertical: 10),
                width: double.infinity,
                decoration: BoxDecoration(
                    border: const Border(
                        bottom: BorderSide(width: 0.7, color: Colors.grey)),
                    borderRadius: BorderRadius.circular(6)),
                child: InkWell(
                  onTap: () {
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (context) {
                      return const Addpost();
                    }));
                  },
                  child: ListTile(
                    leading: Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          color: Colors.blueAccent),
                      child: Center(
                        child: Text(
                          'B',
                          style: Theme.of(context)
                              .textTheme
                              .titleLarge!
                              .copyWith(color: Colors.white),
                        ),
                      ),
                    ),
                    title: Text(
                      'Announce Something to your class',
                      style: Theme.of(context)
                          .textTheme
                          .titleMedium!
                          .copyWith(color: Colors.grey),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              const ClassroomItems()
            ],
          ),
        ),
      ),
    );
  }
}
