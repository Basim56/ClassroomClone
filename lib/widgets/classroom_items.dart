import 'package:flutter/material.dart';
import 'package:google_classroom/data/dummy_items.dart';
import 'package:google_classroom/screens/classroom_item_screen.dart';
import 'package:google_classroom/screens/classroom_item_screen2.dart';
import 'package:intl/intl.dart';

class ClassroomItems extends StatelessWidget {
  const ClassroomItems({super.key});
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemCount: dummyItems.length,
        itemBuilder: (context, index) {
          return Container(
            padding: EdgeInsets.symmetric(vertical: 5),
            width: double.infinity,
            decoration: BoxDecoration(
                border: Border.all(width: 0.7, color: Colors.grey),
                borderRadius: BorderRadius.circular(6)),
            child: Column(
              children: [
                Container(
                  decoration: const BoxDecoration(
                      border: Border(
                          bottom: BorderSide(width: 0.5, color: Colors.grey))),
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
                        DateFormat('d MMMM y').format(DateTime.now()),
                        style: Theme.of(context)
                            .textTheme
                            .titleSmall!
                            .copyWith(color: Colors.grey),
                      ),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (ctx) => const ClassroomItemScreen2()));
                  },
                  child: Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 14, vertical: 10),
                      alignment: Alignment.topLeft,
                      child: Text(
                        'Add class comment',
                        style: Theme.of(context)
                            .textTheme
                            .titleMedium!
                            .copyWith(
                                color: Colors.grey,
                                fontWeight: FontWeight.bold),
                      )),
                )
              ],
            ),
          );
        });
  }
}
