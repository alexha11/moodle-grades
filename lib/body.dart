import 'package:flutter/material.dart';

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
              const Text(
                '   Choose the course to see the grades',
                style: TextStyle(
                  fontSize: 10.0,
                  fontWeight: FontWeight.bold,
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
              Text(
                "75% 4",
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.grey,
                ),
              ),
            ],
          ),
        ),
        Expanded(
          child: ListView.builder(
            itemCount: 5,
            itemBuilder: (BuildContext context, int index) {
              return DataTable(
                columns: const [
                  DataColumn(label: Text('Column 1')),
                  DataColumn(label: Text('Column 2')),
                ],
                rows: [
                  DataRow(cells: [
                    DataCell(Text('Row ${index + 1}, Column 1')),
                    DataCell(Text('Row ${index + 1}, Column 2')),
                  ]),
                ],
              );
            },
          ),
        ),
      ],
    );
  }
}
