import 'package:flutter/material.dart';

import 'package:muslim_app/homepage.dart';
import 'package:muslim_app/qibla_Screen.dart';
import 'package:muslim_app/sorry.dart';
import 'package:permission_handler/permission_handler.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  var status = await Permission.location.request();
  if (status.isGranted) {
    runApp(const MyApp());
  } else {
    runApp(Sorry());
  }
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Home_page(),
    );
  }
}
