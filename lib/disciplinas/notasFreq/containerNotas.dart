import 'package:flutter/material.dart';

class ContainerNotas extends StatelessWidget {
  const ContainerNotas({Key? key}) : super(key: key);

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
          height: 216,
          width: 360,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            color: Color.fromRGBO(217, 217, 217, 100),
          ),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 104),
                child: Row(
                  children: [
                    Container(
                      width: 120,
                      height: 56,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Color.fromRGBO(3, 166, 150, 1),
                      ),
                      child: Center(
                        child: Text(
                          'Notas',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 24,
                          ),
                        ),
                      ),
                    ),
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
                    "Matéria, Nota",
                  ),
                  _criarLinhaTable("Desenvolvimento Mobile, 100"),
                  _criarLinhaTable(" ,  "),
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
