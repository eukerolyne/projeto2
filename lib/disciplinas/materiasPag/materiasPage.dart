import 'package:flutter/material.dart';
import 'package:projeto2/disciplinas/materiasPag/containerAula.dart';
import 'package:projeto2/disciplinas/materiasPag/containerInfoProf.dart';

class MateriasPage extends StatefulWidget {
  const MateriasPage({super.key});

  @override
  State<MateriasPage> createState() => _MateriasPageState();
}

class _MateriasPageState extends State<MateriasPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          "Matemática",
          style: TextStyle(
              fontSize: 24, fontWeight: FontWeight.bold, color: Colors.white),
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
                  ContainerInfoProf(),
                  ContainerAula(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
