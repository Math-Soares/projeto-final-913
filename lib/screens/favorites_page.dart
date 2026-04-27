import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FavoritesPage extends StatefulWidget {
  const FavoritesPage({super.key});

  @override
  State<FavoritesPage> createState() => _FavoritesPageState();
}

class _FavoritesPageState extends State<FavoritesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        child: ListView(
          children: [
            Padding(
              padding: EdgeInsetsGeometry.only(bottom: 6),
              child: Text(
                'Favoritos',
                style: GoogleFonts.inter(
                  fontSize: 28,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            _cidadeFavoritaCard(
              cidade: 'Arapiraca, AL',
              clima: 'Ensolarado',
              temperatura: '32°',
              isLocalizacaoAtual: true,
            ),
            _cidadeFavoritaCard(
              cidade: 'Maceió, AL',
              clima: 'Nublado',
              temperatura: '29°',
            ),
            _cidadeFavoritaCard(
              cidade: 'São Paulo, SP',
              clima: 'Chuva',
              temperatura: '22°',
            ),
            _adicionarCidadeCard(),
          ],
        ),
      ),
    );
  }

  Widget _cidadeFavoritaCard({
    required String cidade,
    required String clima,
    required String temperatura,
    bool isLocalizacaoAtual = false,
  }) {
    return Container(
      margin: const EdgeInsets.only(bottom: 12),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                cidade,
                style: GoogleFonts.inter(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 4),
              Text(clima, style: GoogleFonts.inter()),
              if (isLocalizacaoAtual) ...[
                const SizedBox(height: 2),
                Text(
                  'Localização atual',
                  style: GoogleFonts.inter(fontSize: 12),
                ),
              ],
            ],
          ),
          Text(
            temperatura,
            style: GoogleFonts.inter(fontSize: 28, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }

  Widget _adicionarCidadeCard() {
    final colorScheme = Theme.of(context).colorScheme;

    return ElevatedButton(
      onPressed: () => {},
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        padding: EdgeInsetsGeometry.all(15),
        foregroundColor: colorScheme.onSurface,
      ),
      child: Text('+ Adicionar cidade', style: GoogleFonts.inter()),
    );
  }
}
