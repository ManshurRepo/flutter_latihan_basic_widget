import 'package:flutter/material.dart';

class LatihanStateful extends StatefulWidget {
  const LatihanStateful({super.key});

  @override
  State<LatihanStateful> createState() => _LatihanStatefulState();
}

class _LatihanStatefulState extends State<LatihanStateful> {
  int count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('$count'),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  count++;
                });
              },
              style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
              child: Text(
                'add',
                style: TextStyle(color: Colors.white),
              ),
            )
          ],
        ),
      ),
    );
  }
}
