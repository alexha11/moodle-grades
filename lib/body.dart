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
                  color: text == 'Missed' || text == 'Failed' || text == '0'
                      ? Colors.red
                      : Colors.black,
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
            buildingTableCell('Assignments', 14, FontWeight.bold, context),
            buildingTableCell('Grade', 14, FontWeight.bold, context),
            buildingTableCell('Range', 14, FontWeight.bold, context),
            buildingTableCell('Feedback', 14, FontWeight.bold, context),
            buildingTableCell('Deadline', 14, FontWeight.bold, context),
          ],
        ),
        TableRow(
          children: [
            buildingTableCell('Assignment 1', 13, FontWeight.normal, context),
            buildingTableCell('4.5', 13, FontWeight.normal, context),
            buildingTableCell('0 - 5', 13, FontWeight.normal, context),
            buildingTableCell('feedbackIcon', 13, FontWeight.normal, context),
            buildingTableCell('Submitted', 13, FontWeight.normal, context),
          ],
        ),
        TableRow(
          children: [
            buildingTableCell('Assignment 2', 13, FontWeight.normal, context),
            buildingTableCell('0', 13, FontWeight.normal, context),
            buildingTableCell('0 - 5', 13, FontWeight.normal, context),
            buildingTableCell('-', 13, FontWeight.normal, context),
            buildingTableCell('Missed', 13, FontWeight.normal, context),
          ],
        ),
        TableRow(
          children: [
            buildingTableCell('Assignment 3', 13, FontWeight.normal, context),
            buildingTableCell('5', 13, FontWeight.normal, context),
            buildingTableCell('0 - 5', 13, FontWeight.normal, context),
            buildingTableCell('Excellent', 13, FontWeight.normal, context),
            buildingTableCell('Submitted', 13, FontWeight.normal, context),
          ],
        ),
        TableRow(
          children: [
            buildingTableCell('Assignment 4', 13, FontWeight.normal, context),
            buildingTableCell('7.25', 13, FontWeight.normal, context),
            buildingTableCell('0 - 8', 13, FontWeight.normal, context),
            buildingTableCell('Great work', 13, FontWeight.normal, context),
            buildingTableCell('Submitted', 13, FontWeight.normal, context),
          ],
        ),
        TableRow(
          children: [
            buildingTableCell(
                'Assignment 5 (Extra Credits)', 13, FontWeight.normal, context),
            buildingTableCell('', 13, FontWeight.normal, context),
            buildingTableCell('0 - 5', 13, FontWeight.normal, context),
            buildingTableCell('', 13, FontWeight.normal, context),
            buildingTableCell(
                '28 April 11:59 PM', 13, FontWeight.normal, context),
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
            buildingTableCell('Total', 13, FontWeight.normal, context),
            buildingTableCell('16.75', 13, FontWeight.normal, context),
            buildingTableCell('0 - 28', 13, FontWeight.normal, context),
            buildingTableCell('', 13, FontWeight.normal, context),
            buildingTableCell('', 13, FontWeight.normal, context),
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
            buildingTableCell('Quizes', 14, FontWeight.bold, context),
            buildingTableCell('Grade', 14, FontWeight.bold, context),
            buildingTableCell('Range', 14, FontWeight.bold, context),
            buildingTableCell('Deadline', 14, FontWeight.bold, context),
          ],
        ),
        TableRow(
          children: [
            buildingTableCell('Quiz 1', 13, FontWeight.normal, context),
            buildingTableCell('1', 13, FontWeight.normal, context),
            buildingTableCell('0 - 5', 13, FontWeight.normal, context),
            buildingTableCell('Submitted', 13, FontWeight.normal, context),
          ],
        ),
        TableRow(
          children: [
            buildingTableCell('Quiz 2', 13, FontWeight.normal, context),
            buildingTableCell('3.75', 13, FontWeight.normal, context),
            buildingTableCell('0 - 5', 13, FontWeight.normal, context),
            buildingTableCell('Submitted', 13, FontWeight.normal, context),
          ],
        ),
        TableRow(
          children: [
            buildingTableCell('Quiz 3', 13, FontWeight.normal, context),
            buildingTableCell('0', 13, FontWeight.normal, context),
            buildingTableCell('0 - 5', 13, FontWeight.normal, context),
            buildingTableCell('Missed', 13, FontWeight.normal, context),
          ],
        ),
        TableRow(
          children: [
            buildingTableCell('Quiz 4', 13, FontWeight.normal, context),
            buildingTableCell('4.25', 13, FontWeight.normal, context),
            buildingTableCell('0 - 5', 13, FontWeight.normal, context),
            buildingTableCell('Submitted', 13, FontWeight.normal, context),
          ],
        ),
        TableRow(
          children: [
            buildingTableCell('Quiz 5', 13, FontWeight.normal, context),
            buildingTableCell('', 13, FontWeight.normal, context),
            buildingTableCell('0 - 5', 13, FontWeight.normal, context),
            buildingTableCell(
                '15 April 11:59 PM', 13, FontWeight.normal, context),
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
            buildingTableCell('Total', 13, FontWeight.normal, context),
            buildingTableCell('9', 13, FontWeight.normal, context),
            buildingTableCell('0 - 25', 13, FontWeight.normal, context),
            buildingTableCell('', 13, FontWeight.normal, context),
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
            buildingTableCell('Projects', 14, FontWeight.bold, context),
            buildingTableCell('Grade', 14, FontWeight.bold, context),
            buildingTableCell('Range', 14, FontWeight.bold, context),
            buildingTableCell('Deadline', 14, FontWeight.bold, context),
          ],
        ),
        TableRow(
          children: [
            buildingTableCell(
                'Individual Project', 13, FontWeight.normal, context),
            buildingTableCell('7.5', 13, FontWeight.normal, context),
            buildingTableCell('0 - 10', 13, FontWeight.normal, context),
            buildingTableCell('Submitted', 13, FontWeight.normal, context),
          ],
        ),
        TableRow(
          children: [
            buildingTableCell('Group Project', 13, FontWeight.normal, context),
            buildingTableCell('', 13, FontWeight.normal, context),
            buildingTableCell('0 - 25', 13, FontWeight.normal, context),
            buildingTableCell(
                '23 April 11:59 PM', 13, FontWeight.normal, context),
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
            buildingTableCell('Total', 13, FontWeight.normal, context),
            buildingTableCell('7.5', 13, FontWeight.normal, context),
            buildingTableCell('0 - 35', 13, FontWeight.normal, context),
            buildingTableCell('', 13, FontWeight.normal, context),
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
            buildingTableCell('Exams', 14, FontWeight.bold, context),
            buildingTableCell('Grade', 14, FontWeight.bold, context),
            buildingTableCell('Range', 14, FontWeight.bold, context),
            buildingTableCell('Deadline', 14, FontWeight.bold, context),
          ],
        ),
        TableRow(
          children: [
            buildingTableCell('Mid-term Exam', 13, FontWeight.normal, context),
            buildingTableCell('22', 13, FontWeight.normal, context),
            buildingTableCell('0 - 25', 13, FontWeight.normal, context),
            buildingTableCell('Submitted', 13, FontWeight.normal, context),
          ],
        ),
        TableRow(
          children: [
            buildingTableCell('Final Exam', 13, FontWeight.normal, context),
            buildingTableCell('', 13, FontWeight.normal, context),
            buildingTableCell('0 - 25', 13, FontWeight.normal, context),
            buildingTableCell('6 May 11:59 PM', 13, FontWeight.normal, context),
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
            buildingTableCell('Total', 13, FontWeight.normal, context),
            buildingTableCell('22', 13, FontWeight.normal, context),
            buildingTableCell('0 - 50', 13, FontWeight.normal, context),
            buildingTableCell('', 13, FontWeight.normal, context),
          ],
        ),
      ],
    ),
  );
}

buildingTableTotalGrade(BuildContext context) {
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
            buildingTableCell('Total Grade', 14, FontWeight.bold, context),
            buildingTableCell('Grade', 14, FontWeight.bold, context),
            buildingTableCell('Range', 14, FontWeight.bold, context),
            buildingTableCell('Proportion', 14, FontWeight.bold, context),
          ],
        ),
        TableRow(
          children: [
            buildingTableCell('Assignment', 13, FontWeight.normal, context),
            buildingTableCell('15.75', 13, FontWeight.normal, context),
            buildingTableCell('0 - 28', 13, FontWeight.normal, context),
            buildingTableCell('30%', 13, FontWeight.normal, context),
          ],
        ),
        TableRow(
          children: [
            buildingTableCell('Quizes', 13, FontWeight.normal, context),
            buildingTableCell('9', 13, FontWeight.normal, context),
            buildingTableCell('0 - 25', 13, FontWeight.normal, context),
            buildingTableCell('20%', 13, FontWeight.normal, context),
          ],
        ),
        TableRow(
          children: [
            buildingTableCell('Projects', 13, FontWeight.normal, context),
            buildingTableCell('7.5', 13, FontWeight.normal, context),
            buildingTableCell('0 - 35', 13, FontWeight.normal, context),
            buildingTableCell('20%', 13, FontWeight.normal, context),
          ],
        ),
        TableRow(
          children: [
            buildingTableCell('Exams', 13, FontWeight.normal, context),
            buildingTableCell('22', 13, FontWeight.normal, context),
            buildingTableCell('0 - 50', 13, FontWeight.normal, context),
            buildingTableCell('30%', 13, FontWeight.normal, context),
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
            buildingTableCell('Total', 13, FontWeight.normal, context),
            buildingTableCell('54.25', 13, FontWeight.normal, context),
            buildingTableCell('0 - 138', 13, FontWeight.normal, context),
            buildingTableCell('100%', 13, FontWeight.normal, context),
          ],
        ),
      ],
    ),
  );
}

buildingTableAllCourses(BuildContext context) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Table(
      border: TableBorder.all(
        width: 1,
        borderRadius: const BorderRadius.all(Radius.circular(10)),
      ),
      columnWidths: const {
        0: FlexColumnWidth(2),
        1: FlexColumnWidth(1.5),
        2: FlexColumnWidth(1),
        3: FlexColumnWidth(1),
        4: FlexColumnWidth(1.5),
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
            buildingTableCell('Name', 14, FontWeight.bold, context),
            buildingTableCell('Code', 14, FontWeight.bold, context),
            buildingTableCell('Grade (credits)', 14, FontWeight.bold, context),
            buildingTableCell('Credits', 14, FontWeight.bold, context),
            buildingTableCell('Completion Date', 14, FontWeight.bold, context),
          ],
        ),
        TableRow(
          children: [
            buildingTableCell('Foundations of Computer Science', 13,
                FontWeight.normal, context),
            buildingTableCell('BM40A0202', 13, FontWeight.normal, context),
            buildingTableCell('', 13, FontWeight.normal, context),
            buildingTableCell('6 cr', 13, FontWeight.normal, context),
            buildingTableCell('On going', 13, FontWeight.normal, context),
          ],
        ),
        TableRow(
          children: [
            buildingTableCell(
                'User Interface and Usability', 13, FontWeight.normal, context),
            buildingTableCell('CT30A2803', 13, FontWeight.normal, context),
            buildingTableCell('', 13, FontWeight.normal, context),
            buildingTableCell('6 cr', 13, FontWeight.normal, context),
            buildingTableCell('On going', 13, FontWeight.normal, context),
          ],
        ),
        TableRow(
          children: [
            buildingTableCell(
                'Object-Oriented Programming', 13, FontWeight.normal, context),
            buildingTableCell('CT60A2411', 13, FontWeight.normal, context),
            buildingTableCell('4', 13, FontWeight.normal, context),
            buildingTableCell('4 cr', 13, FontWeight.normal, context),
            buildingTableCell('6.4.2023', 13, FontWeight.normal, context),
          ],
        ),
        TableRow(
          children: [
            buildingTableCell(
                'Principles of C Programming', 13, FontWeight.normal, context),
            buildingTableCell('CT60A2500', 13, FontWeight.normal, context),
            buildingTableCell('3', 13, FontWeight.normal, context),
            buildingTableCell('3 cr', 13, FontWeight.normal, context),
            buildingTableCell('24.1.2023', 13, FontWeight.normal, context),
          ],
        ),
        TableRow(
          children: [
            buildingTableCell(
                'Database Systems Management', 13, FontWeight.normal, context),
            buildingTableCell('CT60A5521', 13, FontWeight.normal, context),
            buildingTableCell('4', 13, FontWeight.normal, context),
            buildingTableCell('3 cr', 13, FontWeight.normal, context),
            buildingTableCell('24.1.2023', 13, FontWeight.normal, context),
          ],
        ),
        TableRow(
          children: [
            buildingTableCell('Discrete Models and Methods 2', 13,
                FontWeight.normal, context),
            buildingTableCell('CT60A9600', 13, FontWeight.normal, context),
            buildingTableCell('0', 13, FontWeight.normal, context),
            buildingTableCell('3 cr', 13, FontWeight.normal, context),
            buildingTableCell('13.1.2023', 13, FontWeight.normal, context),
          ],
        ),
        TableRow(
          children: [
            buildingTableCell(
                'Introduction to DD Studies in Software and Systems Engineering',
                13,
                FontWeight.normal,
                context),
            buildingTableCell('CT10A9900', 13, FontWeight.normal, context),
            buildingTableCell('Passed', 13, FontWeight.normal, context),
            buildingTableCell('1 cr', 13, FontWeight.normal, context),
            buildingTableCell('14.12.2022', 13, FontWeight.normal, context),
          ],
        ),
        TableRow(
          children: [
            buildingTableCell('Maturity test in Bachelor\'s Degree', 13,
                FontWeight.normal, context),
            buildingTableCell('LUTKYPSAT', 13, FontWeight.normal, context),
            buildingTableCell('Failed', 13, FontWeight.normal, context),
            buildingTableCell('0 cr', 13, FontWeight.normal, context),
            buildingTableCell('23.11.2022', 13, FontWeight.normal, context),
          ],
        ),
      ],
    ),
  );
}

buildingLinearProgressIndicator() {
  return Container(
    margin: const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Current Progress',
          style: TextStyle(
            fontSize: 12,
          ),
        ),
        const SizedBox(height: 8),
        Stack(
          children: [
            LinearProgressIndicator(
              value: 0.75, // set the value of the progress indicator
              backgroundColor: Colors.grey[200],
              valueColor: const AlwaysStoppedAnimation<Color>(
                Color.fromARGB(100, 83, 102, 0),
              ),
              minHeight: 10,
              semanticsLabel: 'Linear progress indicator',
            ),
          ],
        ),
        const SizedBox(height: 8),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const [
            Expanded(
              child: Text(
                '0%',
                textAlign: TextAlign.left,
                style: TextStyle(
                  fontSize: 12,
                ),
              ),
            ),
            Expanded(
              child: Text(
                '25%',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 12,
                ),
              ),
            ),
            Expanded(
              child: Text(
                '50%',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 12,
                ),
              ),
            ),
            Expanded(
              child: Text(
                '75%',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 12,
                ),
              ),
            ),
            Expanded(
              child: Text(
                '100%',
                textAlign: TextAlign.right,
                style: TextStyle(
                  fontSize: 12,
                ),
              ),
            ),
          ],
        ),
      ],
    ),
  );
}

buildingLinearProgressIndicatorAllCourse() {
  return Container(
    margin: const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Annual Target',
          style: TextStyle(
            fontSize: 12,
          ),
        ),
        const SizedBox(height: 8),
        Stack(
          children: [
            LinearProgressIndicator(
              value: 0.5, // set the value of the progress indicator
              backgroundColor: Colors.grey[200],
              valueColor: const AlwaysStoppedAnimation<Color>(
                Color.fromARGB(100, 83, 102, 0),
              ),
              minHeight: 10,
              semanticsLabel: 'Linear progress indicator',
            ),
          ],
        ),
        const SizedBox(height: 8),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const [    
            Expanded(
              child: Text(
                '',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 12,
                ),
              ),
            ),
            Expanded(
              child: Text(
                '30 credits',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 12,
                ),
              ),
            ),
            Expanded(
              child: Text(
                '60 credits',
                textAlign: TextAlign.right,
                style: TextStyle(
                  fontSize: 12,
                ),
              ),
            ),
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
        Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              InputDecorator(
                decoration: InputDecoration(
                  contentPadding: const EdgeInsets.symmetric(
                      horizontal: 20.0, vertical: 15.0),
                  labelText: 'Course',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5.0)),
                ),
                child: DropdownButtonHideUnderline(
                  child: DropdownButton<String>(
                    value: selectCourse,
                    isExpanded: true,
                    isDense: true,
                    focusNode: FocusNode(),
                    onChanged: (String? newValue) {
                      setState(() {
                        selectCourse = newValue!;
                      });
                    },
                    items: <String>[
                      'All Courses',
                      'Foundations of Computer Science',
                      'User Interface and Usability',
                      'Object-Oriented Programming',
                      'Principles of C Programming',
                      'Database Systems Management',
                      'Discrete Models and Methods 2',
                      'Introduction to DD Studies in Software and Systems Engineering',
                      'Maturity test in Bachelor\'s Degree'
                    ].map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                  ),
                ),
              ),
              Container(
                child: selectCourse != 'All Courses'
                    ? Column(
                        children: [
                          const SizedBox(height: 16),
                          buildingLinearProgressIndicator(),
                          const SizedBox(height: 14),
                          buildingTableAssignments(context),
                          buildingTableQuizes(context),
                          buildingTableProjects(context),
                          buildingTableExams(context),
                          buildingTableTotalGrade(context),
                        ],
                      )
                    : Column(
                        children: [
                          const SizedBox(height: 14),
                          buildingLinearProgressIndicatorAllCourse(),
                          const SizedBox(height: 14),
                          buildingTableAllCourses(context),
                        ],
                      ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
