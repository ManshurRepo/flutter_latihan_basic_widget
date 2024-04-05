import 'package:flutter/material.dart';

class MyTabBar extends StatelessWidget {
  const MyTabBar({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 9,
      child: Scaffold(
        appBar: AppBar(
          title: Text('AppBar Demo'),
          backgroundColor: Colors.blue,
          bottom: TabBar(
            isScrollable: true,
            indicator: BoxDecoration(
                borderRadius: BorderRadius.circular(30), color: Colors.blue),
            indicatorColor: Colors.red,
            indicatorSize: TabBarIndicatorSize.tab,
            unselectedLabelColor: Colors.white,
            labelColor: Colors.yellow,
            tabs: const [
              Tab(
                  icon: Icon(
                    Icons.directions_car,
                  ),
                  text: 'Car'),
              Tab(icon: Icon(Icons.directions_train), text: 'Train'),
              Tab(icon: Icon(Icons.directions_bike), text: 'Bike'),
              Tab(icon: Icon(Icons.directions_car), text: 'Car'),
              Tab(icon: Icon(Icons.directions_train), text: 'Train'),
              Tab(icon: Icon(Icons.directions_bike), text: 'Bike'),
              Tab(icon: Icon(Icons.directions_car), text: 'Car'),
              Tab(icon: Icon(Icons.directions_train), text: 'Train'),
              Tab(icon: Icon(Icons.directions_bike), text: 'Bike'),
            ],
          ),
        ),
        body: TabBarView(children: const [
          Center(child: Text('Car Route')),
          Center(child: Text('Train Route')),
          Center(child: Text('Bike Route')),
          Center(child: Text('Car Route')),
          Center(child: Text('Train Route')),
          Center(child: Text('Bike Route')),
          Center(child: Text('Car Route')),
          Center(child: Text('Train Route')),
          Center(child: Text('Bike Route')),
        ]),
      ),
    );
  }
}
