import 'package:flutter/material.dart';

buildingTableCell(
    String text, double fontSize, FontWeight fontWeight, BuildContext context) {
  return TableCell(
    verticalAlignment: TableCellVerticalAlignment.middle,
    child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: text != 'feedbackIcon'
          ? Center(
              child: Text(
                text,
                style: TextStyle(
                  fontSize: fontSize,
                  fontWeight: fontWeight,
                  color: text == 'Missed' ? Colors.red : Colors.black,
                ),
              ),
            )
          : SizedBox(
              height: 25,
              width: 20,
              child: Center(
                child: IconButton(
                  icon: const Icon(Icons.open_in_browser_outlined),

                  //tooltip: 'click to see feedback',
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return AlertDialog(
                          title: const Text('Feedback'),
                          content: const Text(
                              'Hey,\n\nGood answers, but for question 3 your answer is too short. Next time try to meet the question requirements. (-0.5)\n\n- Alex'),
                          actions: [
                            TextButton(
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                              child: const Text('Okay'),
                            ),
                          ],
                        );
                      },
                    );
                  },
                ),
              ),
            ),
    ),
  );
}

buildingTableAssignments(BuildContext context) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Table(
      border: TableBorder.all(
        width: 1,
        borderRadius: const BorderRadius.all(Radius.circular(10)),
      ),
      columnWidths: const {
        0: FlexColumnWidth(1.3),
        1: FlexColumnWidth(1),
        2: FlexColumnWidth(1),
        3: FlexColumnWidth(1.1),
        4: FlexColumnWidth(1),
      },
      defaultVerticalAlignment: TableCellVerticalAlignment.middle,
      children: [
        TableRow(
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10), topRight: Radius.circular(10)),
            color: Color(0x63C4CAA9),
          ),
          children: [
            buildingTableCell('Assignments', 10, FontWeight.bold, context),
            buildingTableCell('Grade', 10, FontWeight.bold, context),
            buildingTableCell('Range', 10, FontWeight.bold, context),
            buildingTableCell('Feedback', 10, FontWeight.bold, context),
            buildingTableCell('Deadline', 10, FontWeight.bold, context),
          ],
        ),
        TableRow(
          children: [
            buildingTableCell('Assignment 1', 9, FontWeight.normal, context),
            buildingTableCell('4.5', 9, FontWeight.normal, context),
            buildingTableCell('0 - 5', 9, FontWeight.normal, context),
            buildingTableCell('feedbackIcon', 9, FontWeight.normal, context),
            buildingTableCell('Submitted', 9, FontWeight.normal, context),
          ],
        ),
        TableRow(
          children: [
            buildingTableCell('Assignment 2', 9, FontWeight.normal, context),
            buildingTableCell('0', 9, FontWeight.normal, context),
            buildingTableCell('0 - 5', 9, FontWeight.normal, context),
            buildingTableCell('-', 9, FontWeight.normal, context),
            buildingTableCell('Missed', 9, FontWeight.normal, context),
          ],
        ),
        TableRow(
          children: [
            buildingTableCell('Assignment 3', 9, FontWeight.normal, context),
            buildingTableCell('5', 9, FontWeight.normal, context),
            buildingTableCell('0 - 5', 9, FontWeight.normal, context),
            buildingTableCell('Excellent', 9, FontWeight.normal, context),
            buildingTableCell('Submitted', 9, FontWeight.normal, context),
          ],
        ),
        TableRow(
          children: [
            buildingTableCell('Assignment 4', 9, FontWeight.normal, context),
            buildingTableCell('7.25', 9, FontWeight.normal, context),
            buildingTableCell('0 - 8', 9, FontWeight.normal, context),
            buildingTableCell('Great work', 9, FontWeight.normal, context),
            buildingTableCell('Submitted', 9, FontWeight.normal, context),
          ],
        ),
        TableRow(
          children: [
            buildingTableCell(
                'Assignment 5 (Extra Credits)', 9, FontWeight.normal, context),
            buildingTableCell('', 9, FontWeight.normal, context),
            buildingTableCell('0 - 5', 9, FontWeight.normal, context),
            buildingTableCell('', 9, FontWeight.normal, context),
            buildingTableCell(
                '28 April 11:59 PM', 9, FontWeight.normal, context),
          ],
        ),
        TableRow(
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(10),
                bottomRight: Radius.circular(10)),
            color: Color(0x63C4CAA9),
          ),
          children: [
            buildingTableCell('Total', 9, FontWeight.normal, context),
            buildingTableCell('16.75', 9, FontWeight.normal, context),
            buildingTableCell('0 - 28', 9, FontWeight.normal, context),
            buildingTableCell('', 9, FontWeight.normal, context),
            buildingTableCell('', 9, FontWeight.normal, context),
          ],
        ),
      ],
    ),
  );
}

buildingTableQuizes(BuildContext context) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Table(
      border: TableBorder.all(
        width: 1,
        borderRadius: const BorderRadius.all(Radius.circular(10)),
      ),
      columnWidths: const {
        0: FlexColumnWidth(1.3),
        1: FlexColumnWidth(1),
        2: FlexColumnWidth(1),
        3: FlexColumnWidth(1),
      },
      defaultVerticalAlignment: TableCellVerticalAlignment.middle,
      children: [
        TableRow(
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10), topRight: Radius.circular(10)),
            color: Color(0x63C4CAA9),
          ),
          children: [
            buildingTableCell('Quizes', 10, FontWeight.bold, context),
            buildingTableCell('Grade', 10, FontWeight.bold, context),
            buildingTableCell('Range', 10, FontWeight.bold, context),
            buildingTableCell('Deadline', 10, FontWeight.bold, context),
          ],
        ),
        TableRow(
          children: [
            buildingTableCell('Quiz 1', 9, FontWeight.normal, context),
            buildingTableCell('1', 9, FontWeight.normal, context),
            buildingTableCell('0 - 5', 9, FontWeight.normal, context),
            buildingTableCell('Submitted', 9, FontWeight.normal, context),
          ],
        ),
        TableRow(
          children: [
            buildingTableCell('Quiz 2', 9, FontWeight.normal, context),
            buildingTableCell('3.75', 9, FontWeight.normal, context),
            buildingTableCell('0 - 5', 9, FontWeight.normal, context),
            buildingTableCell('Submitted', 9, FontWeight.normal, context),
          ],
        ),
        TableRow(
          children: [
            buildingTableCell('Quiz 3', 9, FontWeight.normal, context),
            buildingTableCell('0', 9, FontWeight.normal, context),
            buildingTableCell('0 - 5', 9, FontWeight.normal, context),
            buildingTableCell('Missed', 9, FontWeight.normal, context),
          ],
        ),
        TableRow(
          children: [
            buildingTableCell('Quiz 4', 9, FontWeight.normal, context),
            buildingTableCell('4.25', 9, FontWeight.normal, context),
            buildingTableCell('0 - 5', 9, FontWeight.normal, context),
            buildingTableCell('Submitted', 9, FontWeight.normal, context),
          ],
        ),
        TableRow(
          children: [
            buildingTableCell('Quiz 5', 9, FontWeight.normal, context),
            buildingTableCell('', 9, FontWeight.normal, context),
            buildingTableCell('0 - 5', 9, FontWeight.normal, context),
            buildingTableCell(
                '15 April 11:59 PM', 9, FontWeight.normal, context),
          ],
        ),
        TableRow(
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(10),
                bottomRight: Radius.circular(10)),
            color: Color(0x34C4CAA9),
          ),
          children: [
            buildingTableCell('Total', 9, FontWeight.normal, context),
            buildingTableCell('15', 9, FontWeight.normal, context),
            buildingTableCell('0 - 25', 9, FontWeight.normal, context),
            buildingTableCell('', 9, FontWeight.normal, context),
          ],
        ),
      ],
    ),
  );
}

buildingTableProjects(BuildContext context) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Table(
      border: TableBorder.all(
        width: 1,
        borderRadius: const BorderRadius.all(Radius.circular(10)),
      ),
      columnWidths: const {
        0: FlexColumnWidth(1.3),
        1: FlexColumnWidth(1),
        2: FlexColumnWidth(1),
        3: FlexColumnWidth(1),
      },
      defaultVerticalAlignment: TableCellVerticalAlignment.middle,
      children: [
        TableRow(
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10), topRight: Radius.circular(10)),
            color: Color(0x63C4CAA9),
          ),
          children: [
            buildingTableCell('Projects', 10, FontWeight.bold, context),
            buildingTableCell('Grade', 10, FontWeight.bold, context),
            buildingTableCell('Range', 10, FontWeight.bold, context),
            buildingTableCell('Deadline', 10, FontWeight.bold, context),
          ],
        ),
        TableRow(
          children: [
            buildingTableCell('Individual Project', 9, FontWeight.normal, context),
            buildingTableCell('7.5', 9, FontWeight.normal, context),
            buildingTableCell('0 - 10', 9, FontWeight.normal, context),
            buildingTableCell('Submitted', 9, FontWeight.normal, context),
          ],
        ),
        TableRow(
          children: [
            buildingTableCell('Group Project', 9, FontWeight.normal, context),
            buildingTableCell('', 9, FontWeight.normal, context),
            buildingTableCell('0 - 25', 9, FontWeight.normal, context),
            buildingTableCell('23 April 11:59 PM', 9, FontWeight.normal, context),
          ],
        ),
        TableRow(
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(10),
                bottomRight: Radius.circular(10)),
            color: Color(0x34C4CAA9),
          ),
          children: [
            buildingTableCell('Total', 9, FontWeight.normal, context),
            buildingTableCell('7.5', 9, FontWeight.normal, context),
            buildingTableCell('0 - 35', 9, FontWeight.normal, context),
            buildingTableCell('', 9, FontWeight.normal, context),
          ],
        ),
      ],
    ),
  );
}

buildingTableExams(BuildContext context) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Table(
      border: TableBorder.all(
        width: 1,
        borderRadius: const BorderRadius.all(Radius.circular(10)),
      ),
      columnWidths: const {
        0: FlexColumnWidth(1.3),
        1: FlexColumnWidth(1),
        2: FlexColumnWidth(1),
        3: FlexColumnWidth(1),
      },
      defaultVerticalAlignment: TableCellVerticalAlignment.middle,
      children: [
        TableRow(
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10), topRight: Radius.circular(10)),
            color: Color(0x63C4CAA9),
          ),
          children: [
            buildingTableCell('Exams', 10, FontWeight.bold, context),
            buildingTableCell('Grade', 10, FontWeight.bold, context),
            buildingTableCell('Range', 10, FontWeight.bold, context),
            buildingTableCell('Deadline', 10, FontWeight.bold, context),
          ],
        ),
        TableRow(
          children: [
            buildingTableCell('Mid-term Exam', 9, FontWeight.normal, context),
            buildingTableCell('80%', 9, FontWeight.normal, context),
            buildingTableCell('0 - 100%', 9, FontWeight.normal, context),
            buildingTableCell('Submitted', 9, FontWeight.normal, context),
          ],
        ),
        TableRow(
          children: [
            buildingTableCell('Final Exam', 9, FontWeight.normal, context),
            buildingTableCell('', 9, FontWeight.normal, context),
            buildingTableCell('0 - 100%', 9, FontWeight.normal, context),
            buildingTableCell('6 May 11:59 PM', 9, FontWeight.normal, context),
          ],
        ),
        TableRow(
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(10),
                bottomRight: Radius.circular(10)),
            color: Color(0x34C4CAA9),
          ),
          children: [
            buildingTableCell('Total', 9, FontWeight.normal, context),
            buildingTableCell('80%', 9, FontWeight.normal, context),
            buildingTableCell('0 - 200%', 9, FontWeight.normal, context),
            buildingTableCell('', 9, FontWeight.normal, context),
          ],
        ),
      ],
    ),
  );
}

class BuildingBody extends StatefulWidget {
  const BuildingBody({super.key});

  @override
  State<BuildingBody> createState() => _BuildingBodyState();
}

class _BuildingBodyState extends State<BuildingBody> {
  String selectCourse = 'All Courses';
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        Container(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Padding(
                padding: EdgeInsets.only(right: 8, left: 8, bottom: 1, top: 2),
                child: Text(
                  'Course',
                  style: TextStyle(
                    fontSize: 10.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(height: 1.0),
              DropdownButton<String>(
                isExpanded: true,
                items: const [
                  DropdownMenuItem<String>(
                    value: 'All Courses',
                    child: Text('All Courses'),
                  ),
                  DropdownMenuItem<String>(
                    value: 'User Interface and Usability',
                    child: Text('User Interface and Usability'),
                  ),
                  DropdownMenuItem<String>(
                    value: 'Foundation of Computer Science',
                    child: Text('Foundation of Computer Science'),
                  ),
                  DropdownMenuItem<String>(
                    value: 'Object-Oriented Programming',
                    child: Text('Object-Oriented Programming'),
                  ),
                  DropdownMenuItem<String>(
                    value: 'Principles of C Programming',
                    child: Text('Principles of C Programming'),
                  ),
                  DropdownMenuItem<String>(
                    value: 'Database System Management',
                    child: Text('Database System Management'),
                  ),
                  DropdownMenuItem<String>(
                    value: 'Discrtete Models and Methods',
                    child: Text('Discrtete Models and Methods'),
                  ),
                ],
                onChanged: (value) {
                  setState(() {
                    selectCourse = value.toString();
                  });
                },
                hint: Text(selectCourse),
              ),
              const SizedBox(height: 7.0),
              const Padding(
                padding: EdgeInsets.only(right: 8, left: 8, bottom: 6, top: 1),
                child: Text(
                  '   Choose the course to see the grades',
                  style: TextStyle(
                    fontSize: 10.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        ),
        Container(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text(
                "Current Progress",
                style: TextStyle(
                  fontSize: 14,
                  //fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 2),
              LinearProgressIndicator(
                value: 0.75,
                backgroundColor: Colors.grey,
                valueColor: AlwaysStoppedAnimation<Color>(
                  Color.fromARGB(100, 83, 102, 0),
                ),
                minHeight: 7,
              ),
              SizedBox(height: 8),
              Padding(
                padding:
                    EdgeInsets.only(right: 16, left: 150, bottom: 1, top: 1),
                child: Text(
                  "1 |    2 |    3 |   4 |    5 |",
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.black,
                  ),
                ),
              ),
            ],
          ),
        ),
        Container(
          child: Column(
            children: [
              buildingTableAssignments(context),
              buildingTableQuizes(context),
              buildingTableProjects(context),
              buildingTableExams(context),
            ],
          ),
        )
      ],
    );
  }
}
