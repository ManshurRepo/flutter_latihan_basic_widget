import 'package:flutter/material.dart';

class WrapWidget extends StatelessWidget {
  const WrapWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Wrap(
          alignment: WrapAlignment.start,
          spacing: 5,
          runSpacing: 5,
          children: <Widget>[
            Chip(
              avatar: CircleAvatar(
                backgroundColor: Colors.blue,
                radius: 10,
                child: Text(
                  'TM',
                  style: TextStyle(fontSize: 10),
                ),
              ),
              label: Text('The Master'),
            ),
            Chip(
              avatar: CircleAvatar(
                backgroundColor: Colors.blue,
                radius: 20,
                child: Text(
                  'TM',
                  style: TextStyle(fontSize: 10),
                ),
              ),
              label: Text('The Master'),
            ),
            Chip(
              avatar: CircleAvatar(
                backgroundColor: Colors.blue,
                radius: 20,
                child: Text(
                  'TM',
                  style: TextStyle(fontSize: 10),
                ),
              ),
              label: Text('The Master'),
            ),
            Chip(
              avatar: CircleAvatar(
                backgroundColor: Colors.blue,
                radius: 20,
                child: Text(
                  'TM',
                  style: TextStyle(fontSize: 10),
                ),
              ),
              label: Text('The Master'),
            ),
            Chip(
              avatar: CircleAvatar(
                backgroundColor: Colors.blue,
                radius: 20,
                child: Text(
                  'TM',
                  style: TextStyle(fontSize: 10),
                ),
              ),
              label: Text('The Master'),
            ),
          ],
        ),
      ),
    );
  }
}
