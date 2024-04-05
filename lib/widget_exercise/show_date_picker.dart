import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class ShowDatePickerWidget extends StatefulWidget {
  const ShowDatePickerWidget({super.key});

  @override
  State<ShowDatePickerWidget> createState() => _ShowDatePickerWidgetState();
}

class _ShowDatePickerWidgetState extends State<ShowDatePickerWidget> {
  var selectedDate;
  var selectedTime;

  @override
  void initState() {
    selectedDate = DateTime.now();
    selectedTime = TimeOfDay(hour: 23, minute: 23);
    super.initState();
    
  }

  _selectedTime(BuildContext context) async {
    final TimeOfDay? picked = await showTimePicker(
      context: context,
      initialTime: selectedTime ,
      
    );
    if (picked != null && picked != selectedTime) {
      setState(() {
        selectedTime = picked;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Selected Date'),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('${selectedTime.hour} hour: ${selectedTime.minute} minute'),
            ElevatedButton(
              onPressed: () {
                _selectedTime(context);
              },
              child: const Text('Select Time'),
            ),
          ],
        ),
      ),
    );
  }
}
