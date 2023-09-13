import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:muslim_app/ayatul_kursi.dart';
import 'package:muslim_app/homepage.dart';
import 'package:muslim_app/prayer_time.dart';
import 'package:muslim_app/qibla_Screen.dart';
import 'package:muslim_app/surah_Mulk.dart';
import 'package:muslim_app/surah_yaseen.dart';

class MyDrawer extends StatefulWidget {
  const MyDrawer({super.key});

  @override
  State<MyDrawer> createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          UserAccountsDrawerHeader(
              currentAccountPicture: CircleAvatar(
                backgroundImage: AssetImage(
                  "assets/masjid_nabvi.jpg",
                ),
              ),
              accountName: Text("Qibla Direction"),
              accountEmail: Text("Best Muslim App")),
          ListTile(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => Home_page()));
            },
            leading: CircleAvatar(
              backgroundImage: AssetImage("assets/all_Surah.jpg"),
            ),
            title: Text("All Surah"),
          ),
          //surah yaseen

          ListTile(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => QiblahScreen()));
            },
            leading: CircleAvatar(
              backgroundImage: AssetImage("assets/qibla_location.png"),
            ),
            title: Text("Qibla Direction"),
          ),

          ListTile(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => Surah_yaseen()));
            },
            leading: CircleAvatar(
              backgroundImage: AssetImage("assets/surah_yaseen.jpg"),
            ),
            title: Text("Surah Yaseen"),
          ),
          //
          ListTile(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => Surah_Mulk()));
            },
            leading: CircleAvatar(
              backgroundImage: AssetImage("assets/surah_mulk.jpg"),
            ),
            title: Text("Surah Mulk"),
          ),
          //pryer time
          ListTile(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => PrayerTimesScreen()));
            },
            leading: CircleAvatar(
              backgroundImage: AssetImage("assets/namaz.jpg"),
            ),
            title: Text("Prayer Time"),
          ),
          //pdf
          ListTile(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => MyPdfViewerApp()));
            },
            leading: CircleAvatar(
              backgroundImage: AssetImage("assets/namaz.jpg"),
            ),
            title: Text("pdf"),
          ),
        ],
      ),
    );
  }
}
