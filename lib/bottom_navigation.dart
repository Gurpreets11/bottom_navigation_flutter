import 'package:bottom_navigation_fapp/tab/first_tab.dart';
import 'package:bottom_navigation_fapp/tab/second_tab.dart';
import 'package:bottom_navigation_fapp/tab/third_tab.dart';
import 'package:flutter/material.dart';

class BottomNavigationPage extends StatefulWidget {
  const BottomNavigationPage({super.key});

  final String title = "Bottom Navigation";

  @override
  BottomNavigationPageState createState() => BottomNavigationPageState();
}

class BottomNavigationPageState extends State<BottomNavigationPage> with SingleTickerProviderStateMixin {
  late TabController controller;

  @override
  void initState() {
    super.initState();
    controller = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Bottom Navigation", style: TextStyle(color: Colors.white),),
        backgroundColor: Colors.black87,
      ),
      body: TabBarView(
        controller: controller,
        children: const <Widget>[
          FirstTab(),
          SecondTab(),
          ThirdTab(),
        ],
      ),
      bottomNavigationBar: Material(
        color: Colors.blue,
        child: TabBar(
          tabs: const <Widget>[
            Tab(icon: Icon(Icons.favorite),),
            Tab(icon: Icon(Icons.add),),
            Tab(icon: Icon(Icons.airport_shuttle),),
          ],
          controller: controller,
        ),
      ),
    );
  }
}
