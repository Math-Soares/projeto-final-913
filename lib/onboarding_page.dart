import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class OnboardingPage extends StatefulWidget {
  const OnboardingPage({super.key});

  @override
  State<OnboardingPage> createState() => _OnboardingPage();
}

class _OnboardingPage extends State<OnboardingPage> {
  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;

    return SafeArea(
        child: Scaffold(
          body: ListView(
            children: [
              Center(
                child: Card(
                  shape: CircleBorder(),
                  child: Icon(Icons.location_on_outlined, size: 50),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(26),
                child: Center(
                  child: Text(
                    'Usar sua localização?',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.inter(fontSize: 28, fontWeight: FontWeight.w700,

                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Center(
                  child: Text(
                    textAlign: TextAlign.center,
                    'Permita o acesso para receber previsões automáticas da sua cidade em tempo real.',
                    style: GoogleFonts.inter(fontSize: 13, fontWeight: FontWeight.w700),
                  ),
                ),
              ),
              ElevatedButton(
                onPressed: () => {},
                style: ButtonStyle(foregroundColor: WidgetStatePropertyAll(colorScheme.onSurface)),
                child: Text(
                  'Permitir Localização'
                ),
              ),
              ElevatedButton(
                  onPressed: () => {},
                  style: ButtonStyle(foregroundColor: WidgetStatePropertyAll(colorScheme.onSurface)),
                  child: Text(
                  'Inserir cidade manualmente'
                )
              )
            ],
          ),
        )
    );
  }
}
