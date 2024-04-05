import 'package:flutter/material.dart';

class CardWidget extends StatelessWidget {
  const CardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Card(
          elevation: 5,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              const ListTile(
                leading: Icon(Icons.access_alarm_outlined),
                title: Text('The Enchanted Nightingale'),
                subtitle:
                    Text('Music by Julie Gable and Lyric by James Archer'),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  TextButton(
                    onPressed: () {},
                    child: const Text('Buy Tickets'),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(vertical: 0, horizontal: 10),
                    child: TextButton(
                      onPressed: () {},
                      child: const Text('Listen'),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
