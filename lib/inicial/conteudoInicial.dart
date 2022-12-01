import 'package:flutter/material.dart';
import 'package:projeto2/inicial/containers/containerAtv.dart';
import 'package:projeto2/inicial/containers/containerCalendar.dart';
import 'package:projeto2/inicial/containers/conteinerEvent.dart';

class ConteudoInicialPage extends StatelessWidget {
  const ConteudoInicialPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text("Olá Kerolyne",
            style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.black87)),      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 24),
          child: Column(
            children: [
              Row(
                children: [
                  ContainerAtv(),
                  ContainerEvent(),
                ],
              ),
              ContainerCalendar(),
            ],
          ),
        ),
      ),
      backgroundColor: Colors.white,
    );
  }
}
