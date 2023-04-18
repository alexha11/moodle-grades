import 'package:flutter/material.dart';

buildingTableCell(String text, int fontSize) {
  return TableCell(
    verticalAlignment: TableCellVerticalAlignment.middle,
    child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Text(
        text,
        style: const TextStyle(
          fontSize: 9,
        ),
      ),
    ),
  );
}

buildingTable() {
  return ListView.builder(
    itemCount: 3,
    itemBuilder: (BuildContext context, int index) {
      return Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          decoration: BoxDecoration(
            border: Border.all(
              width: 1,
            ),
            borderRadius: const BorderRadius.all(Radius.circular(10)),
          ),
          child: Table(
            border: TableBorder.symmetric(
              inside: const BorderSide(width: 1),
            ),
            defaultVerticalAlignment: TableCellVerticalAlignment.middle,
            children: [
              const TableRow(
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 136, 244, 13),
                ),
                children: [
                  TableCell(
                    verticalAlignment: TableCellVerticalAlignment.middle,
                    child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        'Assignments',
                        style: TextStyle(
                          fontSize: 10,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  TableCell(
                    verticalAlignment: TableCellVerticalAlignment.middle,
                    child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        'Grade',
                        style: TextStyle(
                          fontSize: 10,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  TableCell(
                    verticalAlignment: TableCellVerticalAlignment.middle,
                    child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        'Range',
                        style: TextStyle(
                          fontSize: 10,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  TableCell(
                    verticalAlignment: TableCellVerticalAlignment.middle,
                    child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        'Deadline',
                        style: TextStyle(
                          fontSize: 10,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              ...List.generate(
                5,
                (index) => TableRow(
                  children: [
                    buildingTableCell('Assignment $index', 9),
                    buildingTableCell('4.5', 9),
                    buildingTableCell('0 - 5', 9),
                    buildingTableCell('Submitted', 9),
                  ],
                ),
              ),
            ],
          ),
        ),
      );
    },
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
    return Column(
      children: [
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
                  Color.fromARGB(255, 48, 91, 0),
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
        Expanded(
          child: buildingTable(),
        ),
      ],
    );
  }
}
