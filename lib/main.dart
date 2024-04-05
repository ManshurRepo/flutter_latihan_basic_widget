import 'package:flutter/material.dart';
import 'package:flutter_fic4/drawer.dart';
import 'package:flutter_fic4/widget_exercise/alert_widget.dart';
import 'package:flutter_fic4/widget_exercise/appbar_widget.dart';
import 'package:flutter_fic4/widget_exercise/bottom_navbar.dart';
import 'package:flutter_fic4/widget_exercise/button_widget.dart';
import 'package:flutter_fic4/widget_exercise/date_time.dart';
import 'package:flutter_fic4/widget_exercise/drop_down.dart';
import 'package:flutter_fic4/widget_exercise/floating_action_button.dart';
import 'package:flutter_fic4/widget_exercise/navigation.dart';
import 'package:flutter_fic4/widget_exercise/show_date_picker.dart';
import 'package:flutter_fic4/widget_exercise/sliver_app_bar.dart';
import 'package:flutter_fic4/widget_exercise/tab_bar.dart';
import 'package:flutter_fic4/widget_exercise/tab_bar_two.dart';
import 'package:flutter_fic4/widget_exercise/text_editing_controller.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        // initialRoute: '/first',
        // routes: {
        //   '/first': (context) => const FirstPage(),
        //   '/second': (context) => const SecondPage('title for second page'),
        //   '/third': (context) => const ThirdPage('third page'),
        //   '/fourth': (context) => const FourthPage('fourth page'),
        // },
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: const AlertDialogWidget());
  }
}
