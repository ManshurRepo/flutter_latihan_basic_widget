import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  const ButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                    // shape: RoundedRectangleBorder(
                    //     borderRadius: BorderRadius.circular(10)),
                    shape:
                        const CircleBorder(side: BorderSide(color: Colors.red)),
                    foregroundColor: Colors.white,
                    backgroundColor: Colors.blue,
                    minimumSize: const Size(300, 100)),
                onPressed: () {},
                child: const Text('Elevated Button')),
            TextButton(
                style: TextButton.styleFrom(foregroundColor: Colors.blue),
                onPressed: () {},
                child: const Text('TextButton')),
            OutlinedButton(
                style: OutlinedButton.styleFrom(
                  foregroundColor: Colors.blue,
                  side: const BorderSide(color: Colors.blue, width: 5),
                ),
                onPressed: () {},
                child: const Text('Text Button')),
            ElevatedButton.icon(
              onPressed: () {},
              icon: const Icon(Icons.alarm),
              label: const Text('Reminder'),
            ),
          ],
        ),
      ),
    );
  }
}
