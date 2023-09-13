import 'package:flutter/material.dart';
import 'package:quran/quran.dart' as quran;
import 'package:quran/quran.dart';

class SurahDetailScreen extends StatelessWidget {
  final int surahNumber;

  SurahDetailScreen({required this.surahNumber});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(quran.getSurahName(surahNumber)),
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(15.0),
          child: ListView.builder(
            itemCount: quran.getVerseCount(surahNumber),
            itemBuilder: (context, index) {
              return ListTile(
                hoverColor: Colors.amber,
                title: Text(
                  quran.getVerse(surahNumber, index + 1, verseEndSymbol: true),
                  textAlign: TextAlign.right,
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
