import 'package:flutter/material.dart';

class AppBarWidget extends StatelessWidget {
  const AppBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightBlueAccent,
        // toolbarHeight: 50,
        // elevation: 25,
        // toolbarOpacity: 0.5,

        leading: Container(
            color: Colors.red,
            child: IconButton(onPressed: () {}, icon: Icon(Icons.menu))),

        title: Text('First Page'),
        centerTitle: true,
        actions: [
          Container(color: Colors.amberAccent, child: Icon(Icons.person_2)),
          SizedBox(
            width: 10,
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Icon(Icons.settings),
          )
        ],
      ),
    );
  }
}
