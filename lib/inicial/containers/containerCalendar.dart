import 'package:flutter/material.dart';
import 'package:projeto2/calendario/calendario.dart';

class ContainerCalendar extends StatelessWidget{
  const ContainerCalendar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Padding(
      padding: const EdgeInsets.only(top: 22, right: 20),
      child: Calendario(),
    );
  }
}