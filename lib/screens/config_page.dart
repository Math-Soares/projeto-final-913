import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ConfigPage extends StatefulWidget {
  final bool isDark;
  final ValueChanged<bool> onThemeChanged;

  const ConfigPage({
    super.key,
    required this.isDark,
    required this.onThemeChanged,
  });

  @override
  State<ConfigPage> createState() => _ConfigPageState();
}

class _ConfigPageState extends State<ConfigPage> {
  bool alertas = false;
  bool previsao = false;
  bool gps = false;

  String temperatura = '°C';
  String horario = '24h';

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ListView(
        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        children: [
          Text(
            'Configurações',
            style: GoogleFonts.inter(fontSize: 28, fontWeight: FontWeight.w700),
          ),
          _sectionTitle('TEMPERATURA'),
          _buildCard(
            child: _buildSegmented(
              leftLabel: '°C',
              rightLabel: '°F',
              selected: temperatura,
              onChanged: (v) => setState(() => temperatura = v),
            ),
          ),
          _sectionTitle('HORÁRIO'),
          _buildCard(
            child: _buildSegmented(
              leftLabel: '24h',
              rightLabel: '12h',
              selected: horario,
              onChanged: (v) => setState(() => horario = v),
            ),
          ),
          _sectionTitle('APARÊNCIA'),
          _buildCard(
            child: _buildListTile(
              title: 'Tema escuro',
              subtitle: widget.isDark ? 'Ativado' : 'Desativado',
              value: widget.isDark,
              onChanged: widget.onThemeChanged,
            ),
          ),
          _sectionTitle('NOTIFICAÇÕES'),
          _buildCard(
            child: _buildListTile(
              title: 'Alertas climáticos',
              subtitle: 'Tempestades e eventos',
              value: alertas,
              onChanged: (v) => setState(() => alertas = v),
            ),
          ),
          _buildCard(
            child: _buildListTile(
              title: 'Previsão diária',
              subtitle: 'Todos os dias às 7h',
              value: previsao,
              onChanged: (v) => setState(() => previsao = v),
            ),
          ),
          _sectionTitle('LOCALIZAÇÃO'),
          _buildCard(
            child: _buildListTile(
              title: 'Usar GPS',
              subtitle: 'Localização precisa',
              value: gps,
              onChanged: (v) => setState(() => gps = v),
            ),
          ),
        ],
      ),
    );
  }

  Widget _sectionTitle(String text) {
    final colorScheme = Theme.of(context).colorScheme;

    return Padding(
      padding: const EdgeInsets.only(left: 2, bottom: 6, top: 6),
      child: Text(
        text,
        style: GoogleFonts.inter(
          fontSize: 11,
          fontWeight: FontWeight.w700,
          letterSpacing: 0.8,
          color: colorScheme.onSurface.withValues(alpha: 0.65),
        ),
      ),
    );
  }

  Widget _buildCard({required Widget child}) {
    return Card(margin: EdgeInsets.only(bottom: 10), child: child);
  }

  Widget _buildSegmented({
    required String leftLabel,
    required String rightLabel,
    required String selected,
    required ValueChanged<String> onChanged,
  }) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Container(
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(12)),
        padding: const EdgeInsets.all(4),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _segmentButton(
              label: leftLabel,
              isSelected: selected == leftLabel,
              onTap: () => onChanged(leftLabel),
            ),
            const SizedBox(width: 6),
            _segmentButton(
              label: rightLabel,
              isSelected: selected == rightLabel,
              onTap: () => onChanged(rightLabel),
            ),
          ],
        ),
      ),
    );
  }

  Widget _segmentButton({
    required String label,
    required bool isSelected,
    required VoidCallback onTap,
  }) {
    final colorScheme = Theme.of(context).colorScheme;

    return InkWell(
      borderRadius: BorderRadius.circular(10),
      onTap: onTap,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 180),
        padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 8),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: isSelected ? colorScheme.primary : Colors.transparent,
        ),
        child: Text(
          label,
          style: GoogleFonts.inter(
            color:
                isSelected
                    ? colorScheme.onPrimary
                    : colorScheme.onSurfaceVariant,
            fontSize: 13,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
    );
  }

  Widget _buildListTile({
    required String title,
    required String subtitle,
    required bool value,
    required ValueChanged<bool> onChanged,
  }) {
    ///final colorScheme = Theme.of(context).colorScheme;

    return ListTile(
      contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 2),
      title: Text(
        title,
        style: GoogleFonts.inter(fontSize: 16, fontWeight: FontWeight.w600),
      ),
      subtitle: Text(
        subtitle,
        style: GoogleFonts.inter(fontSize: 12, fontWeight: FontWeight.w500),
      ),
      trailing: Switch(
        value: value,
        onChanged: onChanged,
        activeThumbColor: Colors.white,
        activeTrackColor: Colors.green[300],

        ///activeThumbColor: colorScheme.onPrimary,
        ///activeTrackColor: colorScheme.primary,
      ),
    );
  }
}
