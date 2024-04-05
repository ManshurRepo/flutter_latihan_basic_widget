import 'package:flutter/material.dart';

class TextEditingWidget extends StatefulWidget {
  const TextEditingWidget({super.key});

  @override
  State<TextEditingWidget> createState() => _TextEditingWidgetState();
}

class _TextEditingWidgetState extends State<TextEditingWidget> {
  // late final TextEditingController _controller;
  var str = '';

  FocusNode first = FocusNode();
  FocusNode second = FocusNode();

  @override
  void initState() {
    // _controller = TextEditingController(text: 'initial value');
    super.initState();
  }

  @override
  void dispose() {
    // _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text('First Page'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              TextField(
                onChanged: (value) {
                  str = value;
                },
                textCapitalization: TextCapitalization.words,
                textAlign: TextAlign.center,
                style: const TextStyle(color: Colors.blue),
                focusNode: first,
                decoration: InputDecoration(
                    label: const Text('Username'),
                    prefixIcon: const Icon(Icons.person),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30))),
                // maxLines: 3,
                // autofocus: true,
                // controller: _controller,
              ),
              const SizedBox(height: 10),
              TextField(
                onChanged: (value) {
                  str = value;
                },
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  hintText: 'Password',
                  // border: OutlineInputBorder(
                  //   borderSide: BorderSide(color: Colors.red),
                  //   borderRadius: BorderRadius.circular(30),
                  // ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.green),
                    borderRadius: BorderRadius.circular(30),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.yellow),
                    borderRadius: BorderRadius.circular(30),
                  ),
                  prefixIcon: const Icon(Icons.lock),
                  labelText: 'Password', // 'label' diganti menjadi 'labelText'
                ),
                obscureText: true,
                focusNode: second,
              ),

              // TextField(
              //   onChanged: (value) {
              //     str = value;
              //   },
              //   keyboardType: TextInputType.number,
              //   decoration: InputDecoration(
              //       hintText: 'Password',
              //       border: OutlineInputBorder(
              //         borderSide: BorderSide(color: Colors.red),
              //         borderRadius: BorderRadius.circular(30),
              //       ),
              //       prefixIcon: const Icon(Icons.lock),
              //       label: const Text('password')),
              //   obscureText: true,
              //   focusNode: second,
              //   // autofocus: true,
              //   // controller: _controller,
              // ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          FocusScope.of(context).requestFocus(second);
          // Navigator.of(context).push(
          //   MaterialPageRoute(builder: (context) => SecondPage(str)
          //       // builder: (context) => SecondPage(_controller.text),
          //       ),
          // );
        },
      ),
    );
  }
}

class SecondPage extends StatelessWidget {
  final String userInput;
  SecondPage(this.userInput);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(userInput),
      ),
      body: Center(
        child: Text(userInput),
      ),
    );
  }
}
