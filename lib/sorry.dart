import 'package:flutter/material.dart';


class Sorry extends StatelessWidget {
  const Sorry({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: Text('Sorry you are not allow to use app'),
        ),
      ),
    );
  }
}