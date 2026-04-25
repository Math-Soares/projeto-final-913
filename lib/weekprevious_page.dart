import 'package:flutter/material.dart';
import "package:google_fonts/google_fonts.dart";

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
        body: ListView(
          children: [
            Text(
              'Previsão da semana',
              style: GoogleFonts.inter(
                fontSize: 35,
                fontWeight: FontWeight.w700,
              ),
            ),
            _buildContainer('Seg.: Máx. 30°/Min. 18°'),
            _buildContainer('Ter.: Máx. 30°/Min. 18°'),
            _buildContainer('Qua.: Máx. 30°/Min. 18°'),
            _buildContainer('Qui.; Máx. 30°/Min. 18°'),
            _buildContainer('Sex.: Máx. 30°/Min. 18°'),
            _buildContainer('Sáb.: Máx. 30°/Min. 18°'),
            _buildContainer('Dom.: Máx. 30°/Min. 18°'),
          ],
        ),
      ),
    );
  }

  Widget _buildContainer(String text) {
    final colorScheme = Theme.of(context).colorScheme;

    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: colorScheme.surfaceContainerHigh,
      ),
      margin: EdgeInsets.all(12),
      padding: EdgeInsets.all(14),
      child: Text(text, style: GoogleFonts.inter(fontSize: 25)),
    );
  }
}
