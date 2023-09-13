import 'package:flutter/material.dart';
import 'package:quran/quran.dart' as quran;
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class Surah_Mulk extends StatefulWidget {
  const Surah_Mulk({super.key});

  @override
  State<Surah_Mulk> createState() => _Surah_MulkState();
}

class _Surah_MulkState extends State<Surah_Mulk> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(quran.getSurahNameArabic(67))),
      body: SafeArea(
          child: ListView.builder(
              itemCount: quran.getVerseCount(67),
              itemBuilder: (context, index) {
                return Text(
                  quran.getVerse(67, index + 1, verseEndSymbol: true),
                  textAlign: TextAlign.right,
                );
              })),
    );
  }
}
