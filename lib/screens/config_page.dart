import 'package:flutter/material.dart';

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

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ListView(
        children: [
          Text('Configurações'),
          createCard(
            child: createListTile(
              title: 'Tema escuro',
              subtitle: widget.isDark ? 'Ativado' : 'Desativado',
              value: widget.isDark,
              func: widget.onThemeChanged,
            ),
          ),
          createCard(
            child: createListTile(
              title: 'Alertas climáticos',
              subtitle: 'Tempestades e eventos',
              value: alertas,
              func: (v) => setState(() => alertas = v),
            ),
          ),
          createCard(
            child: createListTile(
              title: 'Previsão diária',
              subtitle: 'Todos os dias às 7h',
              value: previsao,
              func: (v) => setState(() => previsao = v),
            ),
          ),
          createCard(
            child: createListTile(
              title: 'Usar GPS',
              subtitle: 'Localização precisa',
              value: gps,
              func: (v) => setState(() => gps = v),
            ),
          ),
        ],
      ),
    );
  }

  Widget createCard({required Widget child}) {
    return Card(child: child);
  }

  Widget createListTile({
    required String title,
    required String subtitle,
    required bool value,
    required ValueChanged<bool> func,
  }) {
    return ListTile(
      title: Text(title),
      subtitle: Text(subtitle),
      trailing: Switch(
        value: value,
        onChanged: func,
        activeThumbColor: Colors.white,
        activeTrackColor: Colors.green[300],
      ),
    );
  }
}
