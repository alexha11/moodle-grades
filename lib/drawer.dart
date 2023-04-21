import 'package:flutter/material.dart';

String selectedItemId = 'Grades';

buildingListTile(String text, IconData icon) {
  return Container(
    decoration: BoxDecoration(
      borderRadius: const BorderRadius.all(Radius.circular(40.0)),
      color: selectedItemId == text ? const Color(0x34C4CAA9) : null,
    ),
    child: ListTile(
      title: Row(
        children: [
          Icon(icon),
          //Spacer(flex: 1),
          const SizedBox(width: 10.0),
          Flexible(
            child: Text(
              text,
            ),
          ),
        ],
      ),
      trailing: text == 'Calendar'
          ?  Container(
              height: 19,
              width: 21,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Color(0x63536600),
              ),
              alignment: Alignment.topCenter,
              child: const Text(
                '3',
                style: TextStyle(color: Colors.white, fontSize: 13),
              ),
            )
          : null,
      onTap: () {
        selectedItemId = text;
      },
    ),
  );
}

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
                Padding(
                  padding: const EdgeInsets.only(bottom: 20),
                  child: Row(
                    //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                        icon: const Icon(Icons.menu),
                        tooltip: 'Close view',
                        onPressed: () {
                          Navigator.pop(context);
                        },
                      ),
                      Image.asset('images/logo_lut.png'),
                    ],
                  ),
                ),
                const SizedBox(height: 10.0),
                const Text(
                  'LUT University - Moodle',
                  style: TextStyle(
                    fontSize: 15.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                buildingListTile('Dashboard', Icons.dashboard_outlined),
                buildingListTile('Home', Icons.home_outlined),
                buildingListTile('Calendar', Icons.calendar_today_outlined),
                buildingListTile('Grades', Icons.grading_rounded),
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
            buildingListTile(
                'BM40A0202 Foundations of Computer Science', Icons.school),
            buildingListTile(
                'CT30A2803 User Interface and Usability', Icons.school),
            buildingListTile(
                'CT60A2411 Object-Oriented Programming', Icons.school),
            buildingListTile(
                'CT60A2500 Principles of C Programming', Icons.school),
            buildingListTile(
                'CT60A5521 Database Systems Management', Icons.school),
            buildingListTile(
                'CT60A9600 Discrete Models and Methods 2', Icons.school),
          ],
        ),
      ],
    ),
  );
}
