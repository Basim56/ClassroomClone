import 'package:flutter/material.dart';

class JoinClass extends StatelessWidget {
  JoinClass({super.key});
  final List<String> items = [
    'Use an authorized account',
    'Use a class code with 6-8 letters or numbers and no spaces or symbols'
  ];
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
        leading: CloseButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        title: Text(
          'Join Class',
          style: Theme.of(context).textTheme.titleLarge,
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
                  'Join',
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
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'You are currently signed in as',
                style: Theme.of(context).textTheme.titleMedium,
              ),
              const SizedBox(
                height: 15,
              ),
              ListTile(
                contentPadding: EdgeInsets.zero,
                leading: Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      color: Colors.purple),
                  child: Center(
                      child: Text(
                    'B',
                    style: Theme.of(context)
                        .textTheme
                        .titleLarge!
                        .copyWith(color: Colors.white),
                  )),
                ),
                title: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'BASIM AFZAL',
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                    // const SizedBox(
                    //   height: 5,
                    // ),
                    Text(
                      'basimafzal65@gmail.com',
                      style: Theme.of(context)
                          .textTheme
                          .titleSmall!
                          .copyWith(color: Colors.grey),
                    ),
                  ],
                ),
                subtitle: InkWell(
                  onTap: () {},
                  child: Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: Text(
                      'Switch Account',
                      style: Theme.of(context).textTheme.titleMedium!.copyWith(
                          color: const Color.fromARGB(255, 38, 35, 133)),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                decoration: BoxDecoration(
                    border: Border.all(width: 0.4, color: Colors.grey)),
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                'Ask your teacher for the class code, then enter it here',
                style: Theme.of(context)
                    .textTheme
                    .titleMedium!
                    .copyWith(color: Colors.grey),
              ),
              const SizedBox(
                height: 20,
              ),
              TextFormField(
                decoration: const InputDecoration(
                    border: OutlineInputBorder(), label: Text('Class code')),
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                'To sign with a class code',
                style: Theme.of(context)
                    .textTheme
                    .titleLarge!
                    .copyWith(fontSize: 20),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Container(
                    width: 6,
                    height: 6,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle, color: Colors.black),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Text(
                    items[0],
                    style: Theme.of(context).textTheme.titleMedium!.copyWith(
                          fontSize: 15,
                          color: Colors.grey,
                        ),
                  )
                ],
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 6,
                    height: 6,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(width: 10),
                  Flexible(
                    child: Text(
                      'Use a class code with 6-8 letters or numbers and no spaces or symbols',
                      style: Theme.of(context)
                          .textTheme
                          .headlineSmall!
                          .copyWith(fontSize: 15, color: Colors.grey),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Text.rich(
                TextSpan(
                    style: Theme.of(context)
                        .textTheme
                        .titleMedium!
                        .copyWith(color: Colors.grey),
                    text: 'If you have trouble joining the class, go to the ',
                    children: [
                      TextSpan(
                        style: Theme.of(context)
                            .textTheme
                            .titleMedium!
                            .copyWith(
                                decoration: TextDecoration.underline,
                                decorationThickness: 2.0,
                                decorationColor:
                                    const Color.fromARGB(255, 38, 35, 133),
                                decorationStyle: TextDecorationStyle.solid,
                                color: const Color.fromARGB(255, 38, 35, 133)),
                        text: 'Help Centre article.',
                      )
                    ]),
              )
            ],
          ),
        ),
      ),
    );
  }
}
