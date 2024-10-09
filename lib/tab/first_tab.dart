import 'package:flutter/material.dart';

class FirstTab extends StatelessWidget {
  const FirstTab({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.green,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Icon(
              Icons.favorite,
              size: 200.0,
              color: Colors.white,
            ),
            Text(
              'First Tab',
              style: TextStyle(color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}