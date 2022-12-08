import 'package:flutter/material.dart';
import 'package:projeto2/disciplinas/materiasPag/materiasPage.dart';

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
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(left: 16),
                child: Row(
                  children: [
                    Container(
                      width: 104,
                      height: 24,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Color.fromRGBO(3, 166, 150, 1),
                      ),
                      child: Center(
                        child: Text(
                          'Matemática',
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
                  padding: const EdgeInsets.only(left: 224, top: 8),
                  child: ElevatedButton(
                    style: ButtonStyle(
                      foregroundColor:
                          MaterialStateProperty.all<Color>(Colors.white),
                      backgroundColor: MaterialStateProperty.all<Color>(
                          Color.fromRGBO(1, 46, 64, 1)),
                    ),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(

                              /// A function that is called when the button is pressed.
                              builder: (context) => MateriasPage()));
                    },
                    child: Text("Acessar"),
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
