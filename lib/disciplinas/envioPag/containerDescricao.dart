import 'package:flutter/material.dart';
import 'package:projeto2/disciplinas/materiasPag/materiasPage.dart';

class ContainerDescricao extends StatelessWidget {
  const ContainerDescricao({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.only(
          top: 22,
          right: 6,
          left: 6,
        ),
        child: Container(
          height: 112,
          width: 328,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            color: Color.fromRGBO(217, 217, 217, 100),
          ),
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(left: 112),
                child: Row(
                  children: [
                    Container(
                      width: 120,
                      height: 32,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Color.fromRGBO(3, 166, 150, 1),
                      ),
                      child: Center(
                        child: Text(
                          'Descricao',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                child: Padding(
                  padding: const EdgeInsets.only(left: 8, top: 8),
                  child: Text(
                    'O Lorem Ipsum é um texto modelo da indústria tipográfica e de impressão.',
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
