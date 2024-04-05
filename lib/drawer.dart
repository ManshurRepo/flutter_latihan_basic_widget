import 'package:flutter/material.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightBlueAccent,
      ),
      endDrawer: Drawer(
        child: Container(
          color: Colors.green,
          child: ListView(
            // child: Column(
            padding: EdgeInsets.zero,
            children: [
              // decoration: const BoxDecoration(color: Colors.red),

              const UserAccountsDrawerHeader(
                accountName: Text('Ozan Xzakep'),
                decoration: BoxDecoration(color: Colors.lightBlueAccent),
                accountEmail: Text('ozan@ymail,com'),
                currentAccountPicture: CircleAvatar(),

                // width: double.infinity,
                // color: Colors.yellow,
                // child: const Text('Drawer Header'),
              ),

              ListTile(
                title: const Text('Item 1'),
                onTap: () {},
              ),
              ListTile(
                title: const Text('Item 2'),
                onTap: () {},
              ),
            ],
          ),
        ),
      ),
      body: Builder(builder: (context) {
        return Center(
          child: ElevatedButton(
            onPressed: () {
              Scaffold.of(context).openEndDrawer();
            },
            child: const Text('Drawer'),
          ),
        );
      }),
    );
  }
}
