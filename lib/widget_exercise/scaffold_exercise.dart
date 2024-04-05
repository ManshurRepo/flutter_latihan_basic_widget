import 'package:flutter/material.dart';

class ScaffoldWidget extends StatefulWidget {
  const ScaffoldWidget({super.key});

  @override
  State<ScaffoldWidget> createState() => _ScaffoldWidgetState();
}

class _ScaffoldWidgetState extends State<ScaffoldWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        title: const Text(
          'Sampel Code',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(
            Icons.menu,
            color: Colors.white,
          ),
          onPressed: () {},
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.person,
              color: Colors.white,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.logout, color: Colors.white),
          ),
        ],
      ),
      body: Container(
        height: 300,
        margin: const EdgeInsets.all(20),
        width: double.infinity,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Colors.yellowAccent,
            boxShadow: const [
              BoxShadow(
                  offset: Offset.zero, blurRadius: 5, color: Colors.blueGrey)
            ]),
        child: Column(children: [
          const SizedBox(height: 10),
          const Center(
            child: Text('Hello world'),
          ),
          const SizedBox(height: 10),
          const Icon(
            Icons.access_alarm,
            color: Colors.black,
          ),
          const SizedBox(height: 5),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.network('https://i.pravatar.cc/100'),
              ),
              const SizedBox(
                width: 5,
              ),
               const Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [Text('tes',textAlign: TextAlign.end,), Text('tes')],
                 
                ),
            ],
          ),
          
          const SizedBox(height: 10),
          // CircleAvatar(
          //   backgroundColor: Colors.blueGrey,
          //   radius: 45,
          //   child: CircleAvatar(
              
          //     radius: 35,
          //     child: Image.network('https://i.pravatar.cc/100', fit: BoxFit.cover,),
          //   ),
          // )
        ClipRRect(
          borderRadius: BorderRadius.all(const Radius.circular(50)),
          child: Image.network('https://i.pravatar.cc/100', fit: BoxFit.cover,),
        )
        ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.blueGrey,
        child: const Icon(
          Icons.add_a_photo,
          color: Colors.white,
        ),
        
      ),
    );
  }
}
