import 'package:flutter/material.dart';
import 'package:projeto2/disciplinas/containers/containerAtveTrab.dart';

import '../navigationbar.dart';
import 'containers/containerMaterias.dart';

class DisciplinasPage extends StatelessWidget {
  const DisciplinasPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(3, 166, 150, 1),
        title: const Text("Disciplinas",
            style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.white)),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
          child: Container(
            child: Column(
              children: [
                ContainerAtveTrab(),
                ContainerMateria(),
                Container(
                  margin: const EdgeInsets.all(10.0),
                  child: ElevatedButton(
                    style: ButtonStyle(
                      foregroundColor:
                          MaterialStateProperty.all<Color>(Colors.white),
                      backgroundColor: MaterialStateProperty.all<Color>(
                          Color.fromRGBO(242, 135, 5, 1)),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => InicialPage()),
                      );
                    },
                    child: const Text(
                      "Entrar",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      backgroundColor: Colors.white,
    );
  }
}
