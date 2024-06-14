import 'package:flutter/material.dart';
import 'package:google_classroom/screens/classroom1.dart';

class Addpost extends StatelessWidget {
  const Addpost({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        bottom: PreferredSize(
          preferredSize:
              const Size.fromHeight(4.0), // The height of the bottom border
          child: Container(
            color: Colors.grey, // The color of the bottom border
            height: 4.0, // The height of the bottom border
          ),
        ),
        automaticallyImplyLeading: false,
        title: CloseButton(
          onPressed: () {
            Navigator.of(context).pushReplacement(
                MaterialPageRoute(builder: (ctx) => const Classroom1()));
          },
        ),
        actions: [
          InkWell(
            onTap: () {},
            child: Container(
              height: 40,
              width: 80,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4), color: Colors.black),
              child: Center(
                child: Text(
                  'Post',
                  style: Theme.of(context)
                      .textTheme
                      .titleMedium!
                      .copyWith(color: Colors.white),
                ),
              ),
            ),
          ),
          IconButton(
              onPressed: () {}, icon: const Icon(Icons.more_vert_rounded))
        ],
      ),
      body: Column(
        children: [
          TextFormField(
            decoration: InputDecoration(
                prefixIcon: Icon(Icons.format_align_justify),
                label: Text(
                  '  Announce Something to your class',
                  style: Theme.of(context)
                      .textTheme
                      .titleMedium!
                      .copyWith(color: Colors.black54),
                )),
          ),
          Container(
            width: double.infinity,
            decoration: const BoxDecoration(
                border:
                    Border(bottom: BorderSide(width: 0.9, color: Colors.grey))),
            child: ListTile(
              leading: const Icon(
                Icons.attachment_rounded,
                size: 22,
              ),
              title: Text(
                'Add attachment',
                style: Theme.of(context)
                    .textTheme
                    .titleMedium!
                    .copyWith(color: Colors.black54),
              ),
            ),
          ),
          Container(
            width: double.infinity,
            decoration: const BoxDecoration(
                border:
                    Border(bottom: BorderSide(width: 0.9, color: Colors.grey))),
            child: ListTile(
              leading: const Icon(
                Icons.draw_outlined,
                size: 22,
              ),
              title: Text(
                'Add drawing',
                style: Theme.of(context)
                    .textTheme
                    .titleMedium!
                    .copyWith(color: Colors.black54),
              ),
            ),
          )
        ],
      ),
    );
  }
}
