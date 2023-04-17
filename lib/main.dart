import 'package:flutter/material.dart';
import '/drawer.dart';
import '/body.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Grade App',
      theme: ThemeData(
        useMaterial3: true,
        colorSchemeSeed: Colors.lightGreen,
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
        backgroundColor: Colors.white,
        title: Text(widget.title),
        centerTitle: true,
        actions: [
          Image.asset('images/profile_image.png'),
        ],
      ),
      drawer: Drawer(
        child: buildingDrawer(context),   //function buildingDrawer is in drawer.dart
      ),
      body: const BuildingBody(),   //class BuildingBody is in body.dart
    );
  }
}
