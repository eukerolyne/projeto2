import 'package:flutter/material.dart';
import 'package:projeto2/disciplinas/materiasPag/materiasPage.dart';

class ContainerEnviar extends StatelessWidget {
  const ContainerEnviar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.only(
          top: 8,
          right: 6,
          left: 6,
        ),
        child: Container(
          height: 72,
          width: 328,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            color: Color.fromRGBO(217, 217, 217, 100),
          ),
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(left: 24),
                child: Row(
                  children: [
                    Container(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 8, top: 8),
                        child: Text(
                          'Enviar Arquivo',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 30,
                          ),
                        ),
                      ),
                    ),
                    IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.file_upload,
                          color: Colors.black,
                          size: 50,
                        )),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
