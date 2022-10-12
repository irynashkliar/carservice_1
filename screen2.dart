import 'package:flutter/material.dart';
import 'screen3.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Second Page'),
      ),
      backgroundColor: Colors.amberAccent,
      body: Container(
        width: double.infinity,
        child: Column(
          textDirection: TextDirection.ltr,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              '1',
              textDirection: TextDirection.ltr,
              style: TextStyle(fontSize: 50, color: Colors.white),
            ),
            ElevatedButton(
              child: const Text('Go further'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const ThirdScreen()),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}