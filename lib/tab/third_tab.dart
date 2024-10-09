import 'package:flutter/material.dart';

class ThirdTab extends StatelessWidget {
  const ThirdTab({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.green,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Icon(
              Icons.airport_shuttle,
              size: 200.0,
              color: Colors.white,
            ),
            Text(
              'Third Tab',
              style: TextStyle(color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}