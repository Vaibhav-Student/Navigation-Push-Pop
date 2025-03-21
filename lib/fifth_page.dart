import 'package:flutter/material.dart';
import 'package:navigation_push_pop/second_page.dart';

class FifthPage extends StatelessWidget{
  const FifthPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Fifth Page'),
      ),
      body: Column(
        children: [
          Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => SecondPage()),
            );
          },
          child: Text('Go to Second Page'),
        ),
      ),
        ],
      ),
    );
  }
}