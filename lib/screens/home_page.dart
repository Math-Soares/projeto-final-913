import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(left: 16, right: 16, top: 50, bottom: 0),
        child: ListView(
          children: [
            Center(child: Text('Arapiraca, AL', style: GoogleFonts.inter())),
            SizedBox(height: 4),

            Center(
              child: Text(
                'Seg, 07 Abr',
                style: GoogleFonts.inter(color: Colors.blueGrey),
              ),
            ),

            SizedBox(height: 20),

            Icon(Icons.sunny, size: 40),
            SizedBox(height: 8),

            Center(child: Text('32°', style: GoogleFonts.inter(fontSize: 60))),

            SizedBox(height: 8),

            Center(
              child: Text('Parcialmente nublado', style: GoogleFonts.inter()),
            ),

            SizedBox(height: 20),

            Row(
              children: [
                Expanded(
                  child: Card(
                    elevation: 5,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Padding(
                      padding: EdgeInsets.symmetric(vertical: 16),
                      child: Column(
                        children: [
                          Text('Umidade', style: GoogleFonts.inter()),
                          SizedBox(height: 4),
                          Text('78%', style: GoogleFonts.inter()),
                        ],
                      ),
                    ),
                  ),
                ),

                SizedBox(width: 10),

                Expanded(
                  child: Card(
                    elevation: 5,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Padding(
                      padding: EdgeInsets.symmetric(vertical: 16),
                      child: Column(
                        children: [
                          Text('Vento', style: GoogleFonts.inter()),
                          SizedBox(height: 4),
                          Text('14km/h', style: GoogleFonts.inter()),
                        ],
                      ),
                    ),
                  ),
                ),

                SizedBox(width: 10),

                Expanded(
                  child: Card(
                    elevation: 5,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Padding(
                      padding: EdgeInsets.symmetric(vertical: 16),
                      child: Column(
                        children: [
                          Text('Chuva', style: GoogleFonts.inter()),
                          SizedBox(height: 4),
                          Text('20%', style: GoogleFonts.inter()),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),

            SizedBox(height: 20),

            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Próximos dias | Semana Atual',
                style: GoogleFonts.inter(fontSize: 11),
              ),
            ),
            SizedBox(
              width: double.infinity,
              child: Divider(color: Colors.grey, thickness: 2),
            ),
            SizedBox(width: 10),

            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Terça', style: GoogleFonts.inter()),
                    Icon(Icons.sunny),
                    Text('29°', style: GoogleFonts.inter()),
                  ],
                ),

                SizedBox(height: 10),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Quarta', style: GoogleFonts.inter()),
                    Icon(Icons.cloud),
                    Text('  26°', style: GoogleFonts.inter()),
                  ],
                ),

                SizedBox(height: 10),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Quinta', style: GoogleFonts.inter()),
                    Icon(Icons.water_drop),
                    Text('  22°', style: GoogleFonts.inter()),
                  ],
                ),

                SizedBox(height: 10),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Sexta', style: GoogleFonts.inter()),
                    Icon(Icons.sunny),
                    Text('28°', style: GoogleFonts.inter()),
                  ],
                ),

                SizedBox(height: 10),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Sábado', style: GoogleFonts.inter()),
                    Icon(Icons.cloud),
                    Text('   25°', style: GoogleFonts.inter()),
                  ],
                ),
                SizedBox(height: 20),

                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Próximos dias | Semana Posterior',
                    style: GoogleFonts.inter(fontSize: 11),
                  ),
                ),
                SizedBox(
                  width: double.infinity,
                  child: Divider(color: Colors.grey, thickness: 2),
                ),
              ],
            ),
            SizedBox(height: 10),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [Text('Domingo'), Icon(Icons.cloud), Text('     24°')],
            ),
            SizedBox(height: 10),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [Text('Aguardando Informações...')],
            ),
          ],
        ),
      ),
    );
  }
}
