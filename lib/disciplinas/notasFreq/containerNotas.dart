import 'package:flutter/material.dart';

class ContainerNotas extends StatelessWidget {
  const ContainerNotas({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.only(
          top: 22, right: 6, left: 6,
        ),
        child: Container(
          height: 216,
          width: 360,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            color: Color.fromRGBO(217, 217, 217, 100),
          ),
        ),
      ),
    );
  }
}