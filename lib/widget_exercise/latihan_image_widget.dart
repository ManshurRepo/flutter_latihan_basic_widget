import 'package:flutter/material.dart';

class ImageWidget extends StatelessWidget {
  const ImageWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          height: 200,
          width: 200,
          color: Colors.blue,
        //   decoration: BoxDecoration(
        //       borderRadius: BorderRadius.circular(150),
        //       image: DecorationImage(
        //           image: NetworkImage('https://i.pravatar.cc/50', 
        //           ), fit: BoxFit.cover)),
        // ),
        child: ClipOval(
          child: Image.network('https://i.pravatar.cc/50',
          height: 150,
          width: 150,
          fit: BoxFit.cover),

        // ),
        //   child: Image.network('https://i.pravatar.cc/50',
        //   height: 150,
        //   width: 150,
        //   fit: BoxFit.cover,),

        // ),
        // child: Container(
        //   height: 300,
        //   width: 350,
        //   color: Colors.blue,
        //   child: Image.asset(
        //     'assets/images/ranca-upas.jpg',
        //     alignment: Alignment.bottomLeft,
        //     colorBlendMode: BlendMode.colorBurn,
        //     fit: BoxFit.contain,
        //     repeat: ImageRepeat.repeatY,
        //   ),
        // ),
      ),
        ),
      ),
    );
  }
}
