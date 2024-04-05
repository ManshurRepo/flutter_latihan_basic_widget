import 'package:flutter/material.dart';

class SecondTabBar extends StatefulWidget {
  @override
  State<SecondTabBar> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<SecondTabBar>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tab Bar 2'),
        bottom: TabBar(controller: _tabController, tabs: const [
          Tab(
            icon: Icon(Icons.directions_bike),
            text: 'Bike',
          ),
          Tab(
            icon: Icon(Icons.directions_car),
            text: 'Car',
          ),
          Tab(
            icon: Icon(Icons.directions_train),
            text: 'Train',
          )
        ]),
      ),
      body: TabBarView(
        controller: _tabController,
        children: const [
          Center(
            child: Text('Bike Page'),
          ),
          Center(
            child: Text('Car Page'),
          ),
          Center(
            child: Text('Train Page'),
          )
        ],
      ),
    );
  }
}
