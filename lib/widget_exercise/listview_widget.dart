// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class ListviewWidget extends StatelessWidget {
  const ListviewWidget({super.key});
  // final List<int> colorCodes = <int>[100, 200, 300, 400, 500];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          color: Colors.white,
          child: ListView.separated(
            padding: EdgeInsets.all(10),
            itemCount: dataList.length,
            itemBuilder: (BuildContext context, int index) {
              return Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: Color.fromARGB(255, 164, 195, 211),
                ),
                child: ListTile(
                  leading: Image.network(dataList[index]['url']!),
                  title: Text(dataList[index]['title']!),
                  subtitle: Text(dataList[index]['subtitle'] ?? ''),
                  trailing: IconButton(
                    icon: const Icon(Icons.menu),
                    onPressed: () {},
                  ),
                ),
              );
            },
            // children: [Container(
            //   color: Colors.red,
            //   height: 100,
            // ),
            // Container(
            //   color: Colors.white,
            //   height: 100,
            // ),
            // Container(
            //   color: Colors.yellow,
            //   height: 100,
            // )],
            // scrollDirection: Axis.vertical,
            // // physics: NeverScrollableScrollPhysics(),
            // padding: EdgeInsets.all(10),
            // shrinkWrap: true,
            separatorBuilder: (BuildContext context, int index) {
              return Divider();
            },
          ),
        ),
      ),
    );
  }
}

var dataList = <Map<String, String>>[
  {
    'url': 'https://i.pravatar.cc/50',
    'title': 'Judul 1',
    'subtitle': 'subtitle 1'
  },
  {
    'url': 'https://i.pravatar.cc/50',
    'title': 'Judul 2',
    'subtitle': 'subtitle 2',
  },
  {
    'url': 'https://i.pravatar.cc/50',
    'title': 'Judul 3',
    'subtitle': 'subtitle 3'
  }
];
