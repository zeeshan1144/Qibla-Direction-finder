import 'package:flutter/material.dart';
import 'package:muslim_app/drawer.dart';

import 'package:muslim_app/prayer_time.dart';
import 'package:muslim_app/qibla_Screen.dart';
import 'package:muslim_app/surah_Mulk.dart';
import 'package:muslim_app/surah_detailScreen.dart';
import 'package:muslim_app/surah_list.dart';
import 'package:muslim_app/surah_yaseen.dart';
import 'package:quran/quran.dart' as quran;

class Home_page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MyDrawer(),
      appBar: AppBar(
        title: Text(" All Quran Surahs"),
      ),
      body: SurahList(),
    );
  }
}
