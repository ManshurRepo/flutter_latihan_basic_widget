import 'package:flutter/material.dart';

class BottomNavWidget extends StatefulWidget {
  const BottomNavWidget({super.key});

  @override
  State<BottomNavWidget> createState() => _BottomNavWidgetState();
}

class _BottomNavWidgetState extends State<BottomNavWidget> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  List<Widget> _page = [
    const TextField(),
    const Text('Business Page'),
    const Text('Chart Page'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: IndexedStack(
          alignment: Alignment.center,
          index: _selectedIndex,
          children: const [
            TextField(),
            Text('Business Page'),
            Text('Chart Page'),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        // mouseCursor: SystemMouseCursors.grabbing,
        selectedFontSize: 15,
        unselectedItemColor: Colors.white,
        backgroundColor: Colors.lightBlue,
        showUnselectedLabels: false,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_bag), label: 'Checkout'),
        ],
        selectedItemColor: Colors.black,
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }
}
