import 'package:flutter/material.dart';

class ContainerBP extends StatelessWidget {
  const ContainerBP({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      
      child: Padding(
        padding: const EdgeInsets.only(
          top: 22, right: 6, left: 6, bottom: 8,
        ),
        child: Container(
          height: 72,
          width: 384,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            color: Color.fromRGBO(3, 140, 140, 1),
          ),
        ),
      ),
    );
  }
}