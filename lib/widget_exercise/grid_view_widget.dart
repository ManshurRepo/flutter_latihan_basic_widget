import 'package:flutter/material.dart';

class GridViewWidget extends StatelessWidget {
  final _colors = <int>[100, 200, 300, 400, 500, 600, 700, 800, 900];

  GridViewWidget({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: GridView.builder(
            gridDelegate:
                const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
            itemCount: _colors.length,
            itemBuilder: (context, index) {
              var color = _colors[index];
              return Container(
                color: Colors.amber[color],
              );
            }),
        // child: GridView.count(
        //   crossAxisCount: 2,
        //   mainAxisSpacing: 5,
        //   crossAxisSpacing: 5,
        //   padding: EdgeInsets.all(8),
        //   childAspectRatio: 0.8,
        //   reverse: true,
        //   children: [
        //     Container(
        //       color: Colors.blue[100],
        //     ),
        //     Container(
        //       color: Colors.blue[200],
        //     ),
        //     Container(
        //       color: Colors.blue[300],
        //     ),
        //     Container(
        //       color: Colors.blue[400],
        //     ),
        //     Container(
        //       color: Colors.blue[500],
        //     ),
        //     Container(
        //       color: Colors.blue[600],
        //     ),
        //     Container(
        //       color: Colors.blue[700],
        //     ),
        //     Container(
        //       color: Colors.blue[800],
        //     ),
        //     Container(
        //       color: Colors.blue[900],
        //     ),
        //   ],
        // ),
      ),
    );
  }
}
