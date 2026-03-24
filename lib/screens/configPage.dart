import 'package:flutter/material.dart';

class configPage extends StatefulWidget {
  const configPage({super.key});

  @override
  State<configPage> createState() => _configPageState();
}

class _configPageState extends State<configPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Text('Config Page')
    );
  }
}
