import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class WeekpreviousPage extends StatefulWidget {
  const WeekpreviousPage({super.key});

  @override
  State<WeekpreviousPage> createState() => _WeekpreviousPageState();
}

class _WeekpreviousPageState extends State<WeekpreviousPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.lightBlue,
        body: ListView(
          children: [
            Text(
              'Previsão da semana',
              style: GoogleFonts.inter(
                fontSize: 35,
                fontWeight: FontWeight.w700,
                color: Colors.white
              ),
            ),
            buildContainer(
              'Seg: 30°/18°',
              Colors.lightBlueAccent,
            ),
            buildContainer(
              'Ter:30°/18°',
              Colors.lightBlueAccent,
            ),
            buildContainer(
              'Qua: 30°/18° ',
              Colors.lightBlueAccent,
            ),
            buildContainer(
              'Qui; 30°/18°',
              Colors.lightBlueAccent,
            ),
            buildContainer(
              'Sex: 30°/18°',
              Colors.lightBlueAccent,
            ),
            buildContainer(
              'Sáb:30°/18°',
              Colors.lightBlueAccent,
            ),
            buildContainer(
              'Dom:30°/18°',
              Colors.lightBlueAccent,
            ),

        ],
      ),
    ),
    );
  }

  buildContainer(String text, color) {
    return Container(
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(16),
      ),
      margin: EdgeInsets.all(16),
      padding: EdgeInsets.all(16),
      width: 80,
      height: 60,

      child: Text(text, style: TextStyle(fontSize: 25, color: Colors.white)),
    );
  }
}
