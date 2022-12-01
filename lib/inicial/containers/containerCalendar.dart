import 'package:flutter/material.dart';
import 'package:projeto2/calendario/calendario.dart';

class ContainerCalendar extends StatelessWidget {
  const ContainerCalendar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.only(top: 22, right: 12, left: 12),
        child: Container(
          height: 320,
          width: 328,
          child: Calendario(),
          decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: Color.fromRGBO(217, 217, 217, 100),
        ),
        ),
      ),
    );
  }
}
