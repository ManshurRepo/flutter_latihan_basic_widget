import 'package:flutter/material.dart';

class LayoutWidget extends StatelessWidget {
  const LayoutWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Container(
            height: 100,
            color: Colors.grey,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              // mainAxisSize: MainAxisSize.min,
              children: [
                (_blueBox()),
                Spacer(flex: 1,),
                (_blueBox()),
                Spacer(flex: 3),
                (_blueBox()),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _blueBox() {
    return Container(
      height: 50,
      width: 50,
      decoration: BoxDecoration(color: Colors.blue, border: Border.all()),
    );
  }
}
