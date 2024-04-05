import 'package:flutter/material.dart';

class LayoutWidgetThree extends StatelessWidget {
  const LayoutWidgetThree({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          height: 100,
          width: double.infinity,
          alignment: Alignment.center,
          color: Colors.blue,
          child: AspectRatio(
            aspectRatio: 2 / 1,
            child: Container(
              color: Colors.green,
            ),
          ),
        ),
      ),
    );
  }
}
