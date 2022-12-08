import 'package:flutter/material.dart';

class ContainerAtveTrab extends StatelessWidget {
  const ContainerAtveTrab({Key? key}) : super(key: key);

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
          height: 152,
          width: 328,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            color: Color.fromRGBO(217, 217, 217, 100),
          ),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 72, right: 64),
                child: Row(
                  children: [
                    Container(
                      width: 184,
                      height: 32,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Color.fromRGBO(3, 166, 150, 1)),
                      child: Center(
                        child: Text(
                          'Atividades/Trabalhos',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Table(
                defaultColumnWidth: FixedColumnWidth(160),
                border: TableBorder(
                  horizontalInside: BorderSide(
                    color: Colors.black,
                    style: BorderStyle.solid,
                    width: 1.0,
                  ),
                  verticalInside: BorderSide(
                    color: Colors.black,
                    style: BorderStyle.solid,
                    width: 1.0,
                  ),
                ),
                children: [
                  _criarLinhaTable(
                    "Atividade, Data de Entrega",
                  ),
                  _criarLinhaTable("Aplicativo, 08/12/2022"),
                  _criarLinhaTable(" ,  "),
                  _criarLinhaTable(" ,  "),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  _criarLinhaTable(String listaNomes) {
    return TableRow(
      children: listaNomes.split(',').map((name) {
        return Container(
          alignment: Alignment.center,
          child: Text(
            name,
            style: TextStyle(fontSize: 10, color: Colors.black),
          ),
          padding: EdgeInsets.all(8.0),
        );
      }).toList(),
    );
  }
}
