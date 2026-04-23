import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CityDetailsPage extends StatefulWidget {
  final String cityName;

  const CityDetailsPage({super.key, required this.cityName});

  @override
  State<CityDetailsPage> createState() => _CityDetailsPageState();
}

class _CityDetailsPageState extends State<CityDetailsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              GestureDetector(
                onTap: () => Navigator.pop(context),
                child: Row(
                  children: [
                    Icon(Icons.arrow_back, size: 16),
                    SizedBox(width: 4),
                    Text('Voltar'),
                  ],
                ),
              ),
              SizedBox(height: 12),

              Text(
                widget.cityName,
                style: GoogleFonts.inter(
                  fontSize: 28,
                  fontWeight: FontWeight.w700,
                ),
              ),
              SizedBox(height: 20),

              Center(
                child: Column(
                  children: [
                    Icon(Icons.cloud, size: 60),
                    SizedBox(height: 8),
                    Text(
                      '32°C',
                      style: GoogleFonts.inter(
                        fontSize: 56,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    SizedBox(height: 4),
                    Text(
                      'Nublado · Max 34°  Min 23°',
                      style: GoogleFonts.inter(fontSize: 13),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 24),

              Text(
                'Por hora',
                style: GoogleFonts.inter(
                  fontSize: 11,
                  fontWeight: FontWeight.w700,
                  letterSpacing: 0.8,
                ),
              ),
              SizedBox(height: 10),
              SizedBox(
                height: 70,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    _hourCard('9h', '26°', false),
                    _hourCard('10h', '29°', false),
                    _hourCard('12h', '32°', true),
                    _hourCard('1h', '31°', false),
                    _hourCard('2h', '28°', false),
                  ],
                ),
              ),
              SizedBox(height: 20),

              GridView.count(
                crossAxisCount: 2,
                shrinkWrap: true,
                crossAxisSpacing: 12,
                mainAxisSpacing: 12,
                childAspectRatio: 2.2,
                children: [
                  _infoCard('Sensação', '33°C'),
                  _infoCard('Índice UV', 'Alto'),
                  _infoCard('Pressão', '1012hPa'),
                  _infoCard('Visib.', '10 km'),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _hourCard(String hour, String temp, bool selected) {
    return SizedBox(
      width: 66,
      child: Card(
        margin: EdgeInsets.only(right: 8),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              hour,
              style: GoogleFonts.inter(
                fontSize: 11,
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(height: 4),
            Text(
              temp,
              style: GoogleFonts.inter(
                fontSize: 15,
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _infoCard(String label, String value) {
    return Card(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 14, vertical: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              label,
              style: GoogleFonts.inter(
                fontSize: 11,
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(height: 4),
            Text(
              value,
              style: GoogleFonts.inter(
                fontSize: 16,
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
