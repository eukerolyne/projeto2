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
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        title: Center(
          child: const Text("Olá Kerolyne",
              style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87)),
        ),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
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
      ),
      backgroundColor: Colors.white,
    );
  }
}
