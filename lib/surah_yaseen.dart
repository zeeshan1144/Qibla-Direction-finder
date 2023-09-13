import 'package:flutter/material.dart';
import 'package:quran/quran.dart' as quran;

class Surah_yaseen extends StatefulWidget {
  const Surah_yaseen({super.key});

  @override
  State<Surah_yaseen> createState() => _Surah_yaseenState();
}

class _Surah_yaseenState extends State<Surah_yaseen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Surah Yaseen"),
      ),
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: ListView.builder(
            itemCount: quran.getVerseCount(36),
            itemBuilder: (context, index) {
              return Text(
                quran.getVerse(36, index + 1, verseEndSymbol: true),
                textAlign: TextAlign.right,
              );
            }),
      )),
    );
  }
}
