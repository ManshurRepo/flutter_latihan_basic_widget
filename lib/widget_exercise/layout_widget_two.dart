import 'package:flutter/material.dart';

class LayoutWidgetTwo extends StatelessWidget {
  const LayoutWidgetTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _stack(),
      ),
    );
  }

  Widget _stack() {
    return Container(
      width: 300,
      height: 300,
      color: Colors.blue,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Align(
            alignment: Alignment.bottomRight,
            child: Container(
              height: 90,
              width: 90,
              decoration: BoxDecoration(color: Colors.red),
            ),
          ),
          Align(
            alignment: Alignment.topLeft,
            child: Container(
              height: 100,
              width: 100,
              decoration: BoxDecoration(color: Colors.green),
            ),
          ),
          Positioned(
            top: 0,
            left: 1,
            child: Container(
              height: 80,
              width: 80,
              decoration: BoxDecoration(color: Colors.yellow),
            ),
          ),
        ],
      ),
    );
  }
}
