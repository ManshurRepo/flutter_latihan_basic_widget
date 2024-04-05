import 'package:flutter/material.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('First Page'),
      ),
      body: Container(
        color: Colors.green,
        child: Center(
          child: ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/second',
                    arguments: 'This is Second Page');
                // Navigator.push(
                //     context,
                //     PageRouteBuilder(
                //       pageBuilder: (a, b, c) => SecondPage(),
                //       transitionsBuilder: (a, b, c, child) =>
                //           FadeTransition(opacity: b, child: child),
                //       transitionDuration: Duration(seconds: 2),
                //     ));
              },
              child: const Text('First Page')),
        ),
      ),
    );
  }
}

class SecondPage extends StatelessWidget {
  final String title;
  const SecondPage(this.title, {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Container(
        color: Colors.yellowAccent,
        child: Center(
          child: ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/third',
                    arguments: 'This is Second Page');
              },
              child: const Text('Second Page')),
        ),
      ),
    );
  }
}

class ThirdPage extends StatelessWidget {
  final String title;
  const ThirdPage(this.title, {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Container(
        color: Colors.blue,
        child: Center(
          child: ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushNamedAndRemoveUntil(
                    '/fourth', ModalRoute.withName('/first'));
              },
              child: const Text('Third Page')),
        ),
      ),
    );
  }
}

class FourthPage extends StatelessWidget {
  final String title;
  const FourthPage(this.title, {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Container(
        color: Colors.pink,
        child: Center(
          child: ElevatedButton(
              onPressed: () {
                Navigator.of(context).pop();
                // Navigator.of(context).pushNamedAndRemoveUntil(
                //     '/fourth', ModalRoute.withName('/first'));
              },
              child: const Text('Fourth Page')),
        ),
      ),
    );
  }
}
