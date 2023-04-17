import 'package:flutter/material.dart';
import '/main.dart';

buildingDrawer(BuildContext context) {
  return Drawer(
    child: ListView(
      padding: EdgeInsets.zero,
      children: [
        SizedBox(
          height: 370,
          child: DrawerHeader(
            decoration: const BoxDecoration(
              color: Colors.white,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                IconButton(
                  icon: const Icon(Icons.menu),
                  tooltip: 'Close view',
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
                const SizedBox(height: 10.0),
                const Text(
                  'LUT University - Moodle',
                  style: TextStyle(
                    fontSize: 15.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                ListTile(
                  title: Row(
                    children: const [
                      Icon(Icons.dashboard_outlined),
                      //Spacer(flex: 1),
                      SizedBox(width: 10.0),
                      Flexible(
                        child: Text(
                          'Dashboard',
                        ),
                      ),
                    ],
                  ),
                  onTap: () {},
                ),
                ListTile(
                  title: Row(
                    children: const [
                      Icon(Icons.home_outlined),
                      //Spacer(flex: 1),
                      SizedBox(width: 10.0),
                      Flexible(
                        child: Text(
                          'Home',
                        ),
                      ),
                    ],
                  ),
                  onTap: () {},
                ),
                ListTile(
                  title: Row(
                    children: const [
                      Icon(Icons.calendar_today_outlined),
                      //Spacer(flex: 1),
                      SizedBox(width: 10.0),
                      Flexible(
                        child: Text(
                          'Calendar',
                        ),
                      ),
                    ],
                  ),
                  onTap: () {},
                ),
                ListTile(
                  title: Container(
                    color: const Color.fromARGB(255, 216, 244, 185),
                    child: Row(
                      children: const [
                        Icon(Icons.grading_rounded),
                        //Spacer(flex: 1),
                        SizedBox(width: 10.0),
                        Flexible(
                          child: Text(
                            'Grades',
                          ),
                        ),
                      ],
                    ),
                  ),
                  onTap: () {},
                ),
              ],
            ),
          ),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding:
                  EdgeInsets.only(right: 1.5, left: 20, bottom: 10, top: 10),
              child: Text(
                'My Courses',
                style: TextStyle(
                  fontSize: 15.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            ListTile(
              title: Row(
                children: const [
                  Icon(Icons.school),
                  //Spacer(flex: 1),
                  SizedBox(width: 10.0),
                  Flexible(
                    child: Text(
                      'BM40A0202 Foundations of Computer Science',
                    ),
                  ),
                ],
              ),
              onTap: () {
                // handle menu item 1 tap
              },
            ),
            ListTile(
              //title: const Text('CT30A2803 User Interface and Usability'),
              title: Row(
                children: const [
                  Icon(Icons.school),
                  SizedBox(width: 10.0),
                  Flexible(
                    child: Text(
                      'CT30A2803 User Interface and Usability',
                    ),
                  ),
                ],
              ),
              onTap: () {
                // handle menu item 2 tap
              },
            ),
            ListTile(
              //title: const Text('CT60A2411 Object-Oriented Programming'),
              title: Row(
                children: const [
                  Icon(Icons.school),
                  SizedBox(width: 10.0),
                  Flexible(
                    child: Text(
                      'CT60A2411 Object-Oriented Programming',
                    ),
                  ),
                ],
              ),
              onTap: () {
                // handle menu item 3 tap
              },
            ),
            ListTile(
              //title: const Text('CT60A2500 Principles of C Programming'),
              title: Row(
                children: const [
                  Icon(Icons.school),
                  SizedBox(width: 10.0),
                  Flexible(
                    child: Text(
                      'CT60A2500 Principles of C Programming',
                    ),
                  ),
                ],
              ),
              onTap: () {
                // handle menu item 4 tap
              },
            ),
            ListTile(
              //title: const Text('CT60A5521 Database Systems Management'),
              title: Row(
                children: const [
                  Icon(Icons.school),
                  SizedBox(width: 10.0),
                  Flexible(
                    child: Text(
                      'CT60A5521 Database Systems Management',
                    ),
                  ),
                ],
              ),
              onTap: () {
                // handle menu item 5 tap
              },
            ),
            ListTile(
              //title: const Text('CT60A9600 Discrete Models and Methods 2'),
              title: Row(
                children: const [
                  Icon(Icons.school),
                  SizedBox(width: 10.0),
                  Flexible(
                    child: Text(
                      'CT60A9600 Discrete Models and Methods 2',
                    ),
                  ),
                ],
              ),
              onTap: () {
                // handle menu item 6 tap
              },
            ),
          ],
        ),
      ],
    ),
  );
}
