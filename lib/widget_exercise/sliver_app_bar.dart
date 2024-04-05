import 'package:flutter/material.dart';

// class MySliverAppBar extends StatelessWidget {
//   const MySliverAppBar({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: CustomScrollView(
//         slivers: <Widget>[
//           SliverAppBar(
//             expandedHeight: 100,
//             flexibleSpace: FlexibleSpaceBar(
//               title: Text('Test Sliver App Bar'),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

// class MyHomePage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: CustomScrollView(
//         slivers: <Widget>[
//           SliverAppBar(
//             backgroundColor: Colors.yellowAccent,
//             pinned: true,
//             floating: true,
//             expandedHeight: 160.0,
//             flexibleSpace: FlexibleSpaceBar(
//               title: Text(
//                 'SliverAppBar Example',
//                 style: TextStyle(color: Colors.black),
//               ),
//               background: Image.asset(
//                 'assets/images/ranca-upas.jpg',
//                 fit: BoxFit.cover,
//               ),
//             ),
//           ),
//           SliverToBoxAdapter(
//             child: (SizedBox(
//               height: 20,
//               child: Center(
//                 child: Text('Scroll untuk melihat menu'),
//               ),
//             )),
//           ),
//           SliverList(
//             delegate: SliverChildBuilderDelegate(
//               (BuildContext context, int index) {
//                 return Center(
//                   child: ListTile(
//                     title: Text('Item $index'),
//                   ),
//                 );
//               },
//               childCount: 50,
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            backgroundColor: Colors.yellowAccent,
            pinned: true,
            floating: true,
            expandedHeight: 200.0,
            flexibleSpace: FlexibleSpaceBar(
              title: Text(
                'SliverAppBar',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                    fontWeight: FontWeight.w800),
              ),
              background: Image.asset(
                'assets/images/ranca-upas.jpg',
                fit: BoxFit.cover,
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: SizedBox(
              height: 20,
              child: Center(
                child: Text('Scroll untuk melihat menu'),
              ),
            ),
          ),
          // SliverList(
          //   delegate: SliverChildBuilderDelegate(
          //     (BuildContext context, int index) {
          //       return Container(
          //         color: index.isOdd ? Colors.white : Colors.black12,
          //         height: 100.0,
          //         child: Center(
          //           child:
          //               Text('$index', textScaler: const TextScaler.linear(5)),
          //         ),
          //       );
          //     },
          //     childCount: 20,
          //   ),
          // ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                return Center(
                  child: Center(
                    child: Text('Item $index'),
                  ),
                );
              },
              childCount: 50,
            ),
          ),
        ],
      ),
    );
  }
}




/// Flutter code sample for [SliverAppBar].

// class SliverAppBarExample extends StatefulWidget {
//   const SliverAppBarExample({super.key});

//   @override
//   State<SliverAppBarExample> createState() => _SliverAppBarExampleState();
// }

// class _SliverAppBarExampleState extends State<SliverAppBarExample> {
//   bool _pinned = true;
//   bool _snap = false;
//   bool _floating = false;

// // [SliverAppBar]s are typically used in [CustomScrollView.slivers], which in
// // turn can be placed in a [Scaffold.body].
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: CustomScrollView(
//         slivers: <Widget>[
//           SliverAppBar(
//             backgroundColor: Colors.yellowAccent,
//             pinned: _pinned,
//             snap: _snap,
//             floating: _floating,
//             expandedHeight: 160.0,
//             flexibleSpace: const FlexibleSpaceBar(
//               title: Text(
//                 'SliverAppBar',
//                 style: TextStyle(color: Colors.black),
//               ),
//               background: FlutterLogo(),
//             ),
//           ),
//           const SliverToBoxAdapter(
//             child: SizedBox(
//               height: 20,
//               child: Center(
//                 child: Text('Scroll to see the SliverAppBar in effect.'),
//               ),
//             ),
//           ),
//           SliverList(
//             delegate: SliverChildBuilderDelegate(
//               (BuildContext context, int index) {
//                 return Container(
//                   color: index.isOdd ? Colors.white : Colors.black12,
//                   height: 100.0,
//                   child: Center(
//                     child:
//                         Text('$index', textScaler: const TextScaler.linear(5)),
//                   ),
//                 );
//               },
//               childCount: 20,
//             ),
//           ),
//         ],
//       ),
//       bottomNavigationBar: BottomAppBar(
//         child: Padding(
//           padding: const EdgeInsets.all(8),
//           child: OverflowBar(
//             overflowAlignment: OverflowBarAlignment.center,
//             children: <Widget>[
//               Row(
//                 mainAxisSize: MainAxisSize.min,
//                 children: <Widget>[
//                   const Text('pinned'),
//                   Switch(
//                     onChanged: (bool val) {
//                       setState(() {
//                         _pinned = val;
//                       });
//                     },
//                     value: _pinned,
//                   ),
//                 ],
//               ),
//               Row(
//                 mainAxisSize: MainAxisSize.min,
//                 children: <Widget>[
//                   const Text('snap'),
//                   Switch(
//                     onChanged: (bool val) {
//                       setState(() {
//                         _snap = val;
//                         // Snapping only applies when the app bar is floating.
//                         _floating = _floating || _snap;
//                       });
//                     },
//                     value: _snap,
//                   ),
//                 ],
//               ),
//               Row(
//                 mainAxisSize: MainAxisSize.min,
//                 children: <Widget>[
//                   const Text('floating'),
//                   Switch(
//                     onChanged: (bool val) {
//                       setState(() {
//                         _floating = val;
//                         _snap = _snap && _floating;
//                       });
//                     },
//                     value: _floating,
//                   ),
//                 ],
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
