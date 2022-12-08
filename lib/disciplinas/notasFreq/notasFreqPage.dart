import 'package:flutter/material.dart';
import 'package:projeto2/disciplinas/notasFreq/containerFreq.dart';
import 'package:projeto2/disciplinas/notasFreq/containerNotas.dart';

class NotasFreqPage extends StatefulWidget {
  const NotasFreqPage({super.key});

  @override
  State<NotasFreqPage> createState() => _NotasFreqPageState();
}

class _NotasFreqPageState extends State<NotasFreqPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          "Notas e Frequência",
          style: TextStyle(
              fontSize: 24, 
              fontWeight: FontWeight.bold, 
              color: Colors.white),
        ),
        backgroundColor: Color.fromRGBO(3, 166, 150, 1),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
          child: Center(
            child: Container(
              child: Column(
                children: [
                  ContainerNotas(),
                  ContainerFrequencia(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
