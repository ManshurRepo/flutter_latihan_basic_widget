import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class DateTimeWidget extends StatefulWidget {
  const DateTimeWidget({super.key});

  @override
  State<DateTimeWidget> createState() => _DateTimeWidgetState();
}

class _DateTimeWidgetState extends State<DateTimeWidget> {
  var dateTime;
  var timeStamp;
  var anotherDateTime;
  var newDateTime;

  @override
  void initState() {
    super.initState();
    dateTime = DateTime.now();
    timeStamp = DateTime.fromMillisecondsSinceEpoch(0);
    anotherDateTime = DateFormat('yyyy-MM-dd').format(dateTime);
    newDateTime = DateTime.parse(anotherDateTime);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Date Time'),
        centerTitle: true,
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),
      body: Center(
        child: Text('$newDateTime'),
      ),
    );
  }
}
