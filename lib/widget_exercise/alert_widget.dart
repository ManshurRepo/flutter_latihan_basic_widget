import 'package:flutter/material.dart';

class AlertDialogWidget extends StatefulWidget {
  const AlertDialogWidget({super.key});

  @override
  State<AlertDialogWidget> createState() => _AlertDialogWidgetState();
}

class _AlertDialogWidgetState extends State<AlertDialogWidget> {
  _showBottomSheet() {
    showModalBottomSheet(
        context: context,
        builder: (context) => Container(
              height: 100,
              width: double.infinity,
              child: const Text('bottom sheet', textAlign: TextAlign.center,),
            ),);
  }

  _entireDialog() {
    showGeneralDialog(
        context: context,
        pageBuilder: (context, animation1, animation2) => Container(
              color: Colors.lightBlueAccent,
              height: double.infinity,
              width: double.infinity,
            ));
  }

  _showOwnDialog() {
    showDialog(
        context: context,
        builder: (context) => Dialog(
              backgroundColor: Colors.transparent,
              elevation: 0,
              child: Container(
                height: double.infinity,
                width: double.infinity,
                child: Stack(
                  children: [
                    Positioned(
                      top: 0,
                      right: 0,
                      child: Container(
                        height: 200,
                        width: 200,
                        color: Colors.blue,
                      ),
                    ),
                    Positioned(
                      right: 0,
                      bottom: 0,
                      child: Container(
                        height: 100,
                        width: 100,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.red,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ));
  }

  _simpleDialog() {
    showDialog(
        context: context,
        builder: (context) => SimpleDialog(
              title: const Text('simple dialog option'),
              children: [
                SimpleDialogOption(
                  onPressed: () {
                    print('Options 1 clicked');
                  },
                  child: const Text('Options 1'),
                ),
                SimpleDialogOption(
                  onPressed: () {
                    print('Options 2 clicked');
                  },
                  child: const Text('Options 2'),
                ),
                SimpleDialogOption(
                  onPressed: () {
                    print('Options 3 clicked');
                  },
                  child: const Text('Options 3'),
                ),
              ],
            ));
  }

  _showMydialog() {
    showDialog(
        barrierDismissible: false,
        context: context,
        builder: (context) => AlertDialog(
              backgroundColor: Colors.lightGreenAccent,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30)),
              title: const Text('Title Alert Dialogi'),
              content: const Text('Alert dialog description'),
              actions: [
                TextButton(
                  onPressed: () {
                    print('Yes');
                  },
                  child: const Text('Yes'),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: const Text('No'),
                )
              ],
            ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Aler Dialog'),
        backgroundColor: Colors.lightBlue,
        foregroundColor: Colors.white,
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            _showBottomSheet();
          },
          child: const Text('Bottom Sheet'),
        ),
      ),
    );
  }
}
