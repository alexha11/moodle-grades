import 'package:flutter/material.dart';
import '/drawer.dart';
import '/body.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Moodle Grades',
      theme: ThemeData(
        useMaterial3: true,
        colorSchemeSeed: Colors.lightGreen,
        scaffoldBackgroundColor: const Color(0xFFFFFEFC),
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFFFCF9F1),
        title: Text(widget.title),
        centerTitle: true,
        actions: [
          Row(
            children: [
              const Text('Duong Ha',
                  style: TextStyle(color: Colors.black, fontSize: 14)),
              const SizedBox(width: 8.0),
              Builder(
                builder: (BuildContext context) {
                  return IconButton(
                    iconSize: 40.0, // Adjust the size of the IconButton
                    icon: ClipOval(
                      child: Image.network(
                        'https://res.cloudinary.com/ddfq0pl1q/image/upload/v1723157298/focus-photo_pdwkkh.jpg',
                        width:
                            40.0, // Make the width and height equal to iconSize
                        height: 40.0,
                        fit: BoxFit
                            .cover, // Ensures the image fills the ClipOval properly
                      ),
                    ),
                    onPressed: () {},
                  );
                },
              ),
            ],
          ),
        ],
      ),
      drawer: Drawer(
        child: buildingDrawer(context),
      ),
      body: const BuildingBody(),
    );
  }
}
