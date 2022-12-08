import 'package:flutter/material.dart';
import 'package:projeto2/disciplinas/envioPag/containerDescricao.dart';
import 'package:projeto2/disciplinas/envioPag/containerDetalhes.dart';
import 'package:projeto2/disciplinas/envioPag/containerEnvio.dart';
import 'package:projeto2/disciplinas/envioPag/containerInfoAtv.dart';
import 'package:projeto2/disciplinas/materiasPag/containerAula.dart';
import 'package:projeto2/disciplinas/materiasPag/containerInfoProf.dart';

class EnvioPage extends StatefulWidget {
  const EnvioPage({super.key});

  @override
  State<EnvioPage> createState() => _EnvioPageState();
}

class _EnvioPageState extends State<EnvioPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          "Atividade 19/09",
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
                  ContainerInfoAtv(),
                  ContainerDescricao(),
                  ContainerEnviar(),
                  ContainerDetalhes(),
                  Container(
                    margin: const EdgeInsets.all(10.0),
                    child: SizedBox(
                      width: double.tryParse('156'),
                      child: ElevatedButton(
                        style: ButtonStyle(
                          foregroundColor:
                              MaterialStateProperty.all<Color>(Colors.white),
                          backgroundColor: MaterialStateProperty.all<Color>(
                              Color.fromRGBO(242, 135, 5, 1)),
                        ),
                        onPressed: () {},
                        child: const Text(
                          "Enviar",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
