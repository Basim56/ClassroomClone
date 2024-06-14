import 'package:flutter/material.dart';
import 'package:google_classroom/data/dummy_classrooms.dart';
import 'package:google_classroom/data/dummy_items.dart';
import 'package:google_classroom/screens/classroom_item_screen.dart';
import 'package:google_classroom/widgets/maindrawer.dart';

class Classwork extends StatelessWidget {
  const Classwork({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const MainDrawer(),
      appBar: AppBar(
        bottom: PreferredSize(
            preferredSize: Size.fromHeight(4.0),
            child: Container(
              height: 4.0,
              color: Colors.grey,
            )),
        title: Text(dummyClassrooms[0].courseName),
        actions: [
          Icon(Icons.account_box_outlined),
          IconButton(
              onPressed: () {}, icon: const Icon(Icons.more_vert_rounded))
        ],
      ),
      body: ListView.builder(
          itemCount: dummyItems.length,
          itemBuilder: (ctx, index) {
            return Container(
              child: InkWell(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (ctx) => ClassroomItemScreen(
                            classroomItem: dummyItems[index],
                          )));
                },
                child: ListTile(
                  leading: Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        color: Colors.grey),
                    child: const Icon(Icons.pending_actions),
                  ),
                  title: Text(
                    'New material: ${dummyItems[index].documentName}',
                    style: Theme.of(context)
                        .textTheme
                        .titleMedium!
                        .copyWith(color: Colors.black),
                  ),
                  subtitle: Text(
                    dummyItems[index].datePosted,
                    style: Theme.of(context)
                        .textTheme
                        .titleSmall!
                        .copyWith(color: Colors.grey),
                  ),
                ),
              ),
            );
          }),
    );
  }
}
