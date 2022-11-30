import 'package:flutter/material.dart';

class ContainerAtv extends StatelessWidget{
  const ContainerAtv({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Padding(
      padding: const EdgeInsets.only(top: 22, right: 20),
      child: Container(
        height: 264,
        width: 152,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: Colors.black,
        ),
      ),
    );
  }
}