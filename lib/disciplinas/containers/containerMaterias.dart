import 'package:flutter/material.dart';
import 'package:projeto2/disciplinas/notasFreq/notasFreqPage.dart';

class ContainerMateria extends StatelessWidget {
  const ContainerMateria({Key? key}) : super(key: key);

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
          height: 88,
          width: 328,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            color: Color.fromRGBO(217, 217, 217, 100),
          ),
          child: ElevatedButton(
              style: ButtonStyle(
                foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
                backgroundColor: MaterialStateProperty.all<Color>(
                    Color.fromRGBO(1, 46, 64, 1)),
              ),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => NotasFreqPage()));
              },
              child: Text("Acessar")),
        ),
      ),
    );
  }
}
