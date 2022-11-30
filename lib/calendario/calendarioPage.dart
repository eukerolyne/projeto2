import 'package:flutter/material.dart';
import 'package:projeto2/calendario/calendario.dart';

class CalendarioPage extends StatelessWidget {
  const CalendarioPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 255, 255, 255),
        title: const Text("Olá Kerolyne",
            style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.black)),
      ),
      body: Calendario(),
      backgroundColor: Colors.white,
    );
  }
}
