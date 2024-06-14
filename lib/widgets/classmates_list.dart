import 'package:flutter/material.dart';
import 'package:google_classroom/data/dummy_people.dart';

class ClassmatesList extends StatelessWidget {
  const ClassmatesList({super.key});
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemCount: dummyPeople.length,
        itemBuilder: (ctx, index) {
          return ListTile(
            contentPadding: EdgeInsets.zero,
            leading: Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  color: dummyPeople[index].color),
              child: Center(
                child: Text(
                  dummyPeople[index].name[0],
                  style: Theme.of(context)
                      .textTheme
                      .titleMedium!
                      .copyWith(color: Colors.white),
                ),
              ),
            ),
            title: Text(dummyPeople[index].name),
          );
        });
  }
}
