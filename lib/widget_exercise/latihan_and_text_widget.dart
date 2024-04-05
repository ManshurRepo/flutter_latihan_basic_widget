import 'package:flutter/material.dart';

class LatihanContainer extends StatelessWidget {
  const LatihanContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Latihan Container',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.blue,
        centerTitle: true,
      ),
      body: Center(
        child: Container(
          padding: const EdgeInsets.all(10),
          height: 300,
          width: 300,
          decoration: BoxDecoration(
              color: Colors.red,
              border: Border.all(color: Colors.yellow, width: 20),
              borderRadius: const BorderRadius.all(Radius.circular(10))),
          margin: const EdgeInsets.all(10),
          // transform: Matrix4.rotationZ(-1.0),
          child: Column(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(50),
                child: Image.network('https://i.pravatar.cc/100'),
              ),
              const SizedBox(height: 10),
              const Text(
                'Hello Anna',
                textAlign: TextAlign.start,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                    fontStyle: FontStyle.italic,
                    decoration: TextDecoration.lineThrough,
                    decorationColor: Colors.black,
                    decorationThickness: 2,
                    decorationStyle: TextDecorationStyle.wavy,
                    letterSpacing: 5,
                    wordSpacing: 1,
                    ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
