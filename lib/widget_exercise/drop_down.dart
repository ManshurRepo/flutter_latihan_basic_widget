import 'package:flutter/material.dart';

class DropDownWidget extends StatefulWidget {
  const DropDownWidget({super.key});

  @override
  State<DropDownWidget> createState() => _DropDownWidgetState();
}

class _DropDownWidgetState extends State<DropDownWidget> {
  var selected = 1;
  final dropDownList = <int>[1, 2, 3, 4];
  var isChecked = false;
  var jenisKelamin = 'Laki-Laki';
  var isOn = false;
  final _globalKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Drop Down'),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Form(
              key: _globalKey,
              child: TextFormField(
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'please enter some text';
                  }
                  return 'thank you for the answer';
                },
              ),
            ),
            ElevatedButton(
                onPressed: () {
                  _globalKey.currentState!.validate();
                },
                child: const Text('Validate')),
            Switch(
                value: isOn,
                onChanged: (bool? val) {
                  setState(() {
                    if (val != null) {
                      isOn = val;
                    }
                  });
                }),
            RadioListTile(
              title: Text('Laki-Laki'),
              value: 'Laki-Laki',
              groupValue: jenisKelamin,
              onChanged: (String? val) {
                setState(
                  () {
                    if (val != null) {
                      jenisKelamin = val;
                    }
                  },
                );
              },
            ),
            RadioListTile(
              title: Text('Perempuansss'),
              value: 'Perempuan',
              groupValue: jenisKelamin,
              onChanged: (String? val) {
                setState(
                  () {
                    if (val != null) {
                      jenisKelamin = val;
                    }
                  },
                );
              },
            ),
            Checkbox(
                value: isChecked,
                onChanged: (val) {
                  setState(() {
                    if (val != null) isChecked = val;
                  });
                }),
            SizedBox(
              height: 8,
            ),
            DropdownButton(
              iconEnabledColor: Colors.green,
              dropdownColor: Colors.lightBlue,
              value: selected,
              items: dropDownList
                  .map((e) => DropdownMenuItem(
                      value: e,
                      child: Text(
                        e.toString(),
                      )))
                  .toList(),
              onChanged: (int? val) {
                setState(() {
                  if (val != null) selected = val;
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
