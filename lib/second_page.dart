import 'package:flutter/material.dart';
import 'package:navigation_push_pop/fourth_page.dart';
import 'package:navigation_push_pop/third_page.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Second Page'),
      ),
      body: Column(
        children: [
          Center(
            child: ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('Go back to First Page'),
            ),
          ),
          Center(
            child: ElevatedButton(
              onPressed: () {
                Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(builder: (context) => ThirdPage()),
                  (route) => false,
                );
              },
              child: const Text('Go to Third Page'),
            ),
          ),
          Center(
            child: ElevatedButton(
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => FourthPage()),
                );
              },
              child: const Text('Go to Fourth Page'),
            ),
          ),
        ],
      ),
    );
  }
}