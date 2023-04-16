import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Grade App',
      theme: ThemeData(
        primarySwatch: Colors.lightBlue,
      ),
      home: const MyHomePage(title: 'Grades'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String selectCourse = 'All Courses';

  void closeDrawer() {
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        centerTitle: true,
        actions: [
          Image.asset('images/profile_image.png'),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: const BoxDecoration(
                color: Colors.white,
              ),
              child: IconButton(
                icon: const Icon(Icons.menu),
                tooltip: 'Close view',
                onPressed: () {
                  closeDrawer();
                },
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'My Courses ',
                  style: TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                ListTile(
                  title:
                      const Text('BM40A0202 Foundations of Computer Science'),
                  onTap: () {
                    // handle menu item 1 tap
                  },
                ),
                ListTile(
                  title: const Text('CT30A2803 User Interface and Usability'),
                  onTap: () {
                    // handle menu item 2 tap
                  },
                ),
                ListTile(
                  title: const Text('CT60A2411 Object-Oriented Programming'),
                  onTap: () {
                    // handle menu item 3 tap
                  },
                ),
                ListTile(
                  title: const Text('CT60A2500 Principles of C Programming'),
                  onTap: () {
                    // handle menu item 4 tap
                  },
                ),
                ListTile(
                  title: const Text('CT60A5521 Database Systems Management'),
                  onTap: () {
                    // handle menu item 5 tap
                  },
                ),
                ListTile(
                  title: const Text('CT60A9600 Discrete Models and Methods 2'),
                  onTap: () {
                    // handle menu item 6 tap
                  },
                ),
              ],
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  '   Course',
                  style: TextStyle(
                    fontSize: 10.0,
                    fontWeight: FontWeight.bold,
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
      ),
    );
  }
}
