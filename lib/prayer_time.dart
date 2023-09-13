import 'package:flutter/material.dart';
import 'package:adhan_dart/adhan_dart.dart';
import 'package:geolocator/geolocator.dart';
import 'package:intl/intl.dart';

class PrayerTimesScreen extends StatefulWidget {
  @override
  _PrayerTimesScreenState createState() => _PrayerTimesScreenState();
}

class _PrayerTimesScreenState extends State<PrayerTimesScreen> {
  Future<PrayerTimes>? _prayerTimesFuture;

  @override
  void initState() {
    super.initState();
    _prayerTimesFuture = _initializePrayerTimes();
  }

  Future<PrayerTimes> _initializePrayerTimes() async {
    Position position = await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.high);
    Coordinates coordinates =
        Coordinates(position.latitude, position.longitude);

    DateTime date = DateTime.now();

    CalculationParameters params = CalculationMethod.MuslimWorldLeague();
    params.madhab = Madhab.Hanafi;
    return PrayerTimes(coordinates, date, params, precision: true);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Prayer Times'),
      ),
      body: FutureBuilder<PrayerTimes>(
        future: _prayerTimesFuture,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(child: Text('Error: ${snapshot.error}'));
          } else {
            PrayerTimes prayerTimes = snapshot.data!;
            return ListView(
              children: [
                _buildPrayerTimeTile('Fajr',
                    '${DateFormat('dd/MM/yyyy h:mm a').format(prayerTimes.fajr!.toLocal())}'),
                _buildPrayerTimeTile('Sunrise',
                    '${DateFormat('dd/MM/yyyy h:mm a').format(prayerTimes.sunrise!.toLocal())}'),
                _buildPrayerTimeTile('Dhuhr',
                    '${DateFormat('dd/MM/yyyy h:mm a').format(prayerTimes.dhuhr!.toLocal())}'),
                _buildPrayerTimeTile('Asr',
                    '${DateFormat('dd/MM/yyyy h:mm a').format(prayerTimes.asr!.toLocal())}'),
                _buildPrayerTimeTile('Maghrib',
                    '${DateFormat('dd/MM/yyyy h:mm a').format(prayerTimes.maghrib!.toLocal())}'),
                _buildPrayerTimeTile('Isha',
                    '${DateFormat('dd/MM/yyyy h:mm a').format(prayerTimes.isha!.toLocal())}'),
              ],
            );
          }
        },
      ),
    );
  }

  Widget _buildPrayerTimeTile(String title, String time) {
    return ListTile(
      title: Text(title),
      subtitle: Text(time.toString()),
    );
  }
}
