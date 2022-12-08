import 'package:flutter/material.dart';

class ContainerAtveTrab extends StatelessWidget {
  const ContainerAtveTrab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.only(
          top: 22, right: 6, left: 6,
        ),
        child: Container(
          height: 216,
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
              )
            ],
          ),
        ),
      ),
    );
  }
}
