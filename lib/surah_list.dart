import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:muslim_app/surah_detailScreen.dart';
import 'package:quran/quran.dart' as quran;

class SurahList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.all(15.0),
        child: ListView.builder(
          itemCount: quran.getVerseCount(10),
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListTile(
                onTap: () {
                  _navigateToSurahDetail(context, index + 1);
                },
                leading: Icon(Icons.book),
                title: Text(quran.getSurahName(index + 1).toString()),
                trailing: Text("Total Verse = " +
                    quran.getVerseCount(index + 1).toString()),
              ),
            );
          },
        ),
      ),
    );
  }

  void _navigateToSurahDetail(BuildContext context, int surahNumber) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => SurahDetailScreen(surahNumber: surahNumber),
      ),
    );
  }
}
