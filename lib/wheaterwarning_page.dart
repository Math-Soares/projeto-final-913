import 'package:flutter/material.dart';
import "package:google_fonts/google_fonts.dart";

class StormWarningPage extends StatefulWidget {
  const StormWarningPage({super.key});

  @override
  State<StormWarningPage> createState() => _StormWarningPageState();
}

class _StormWarningPageState extends State<StormWarningPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: ListView(
          children: [
            Text(
              'Alertas Climáticos',
              style: GoogleFonts.inter(
                fontSize: 35,
                fontWeight: FontWeight.w700,
              ),
            ),
            _buildContainer(
              'Tempestade Severa',
              'Ventos de até 90km/h previstos para essa tarde. Evite áreas abertas.',
              Colors.red,
            ),
            _buildContainer(
              'Alto Índice UV',
              'UV entre 8-10 amanhã. Use protetor solar e evite sol entre 10h-16h.',
              Colors.yellow,
            ),
            _buildContainer(
              'Melhora no fim de semana',
              'Sábado e domingo com sol e baixa umidade. Ótimo para atividades ao ar livre.',
              Colors.green,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildContainer(String title, String subtitle, Color alertColor) {
    final colorScheme = Theme.of(context).colorScheme;

    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: alertColor,
      ),
      margin: EdgeInsets.all(12),
      padding: EdgeInsets.only(left: 7),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: colorScheme.surfaceContainerHigh,
        ),
        padding: EdgeInsets.all(14),
        child: Column(
          children: [
            Text(
              title,
              style: GoogleFonts.inter(
                fontSize: 25,
                fontWeight: FontWeight.w600,
              ),
            ),
            Text(subtitle, style: GoogleFonts.inter(fontSize: 18)),
          ],
        ),
      ),
    );
  }
}
