import 'package:flutter/material.dart';

class DisciplinasPage extends StatefulWidget {
  const DisciplinasPage({super.key});

  @override
  State<DisciplinasPage> createState() => _DisciplinasPageState();
}

class _DisciplinasPageState extends State<DisciplinasPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("Disciplinas"),
      ),
    );
  }
}