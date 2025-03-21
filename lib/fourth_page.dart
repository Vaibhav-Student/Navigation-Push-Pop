import 'package:flutter/material.dart';
import 'package:navigation_push_pop/fifth_page.dart';

class FourthPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Fourth Page'),
      ),
      body: Center(
            child: ElevatedButton(
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => FifthPage()),
                );
              },
              child: Text("Fifth Page"),
            ),
          ),
    );
  }
}