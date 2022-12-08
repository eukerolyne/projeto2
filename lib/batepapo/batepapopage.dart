import 'package:flutter/material.dart';
import 'package:projeto2/batepapo/containers/containerBP.dart';
import 'package:projeto2/batepapo/containers/containerFotobt.dart';

class BatePapoPage extends StatefulWidget {
  const BatePapoPage({super.key});

  @override
  State<BatePapoPage> createState() => _BatePapoPageState();
}

class _BatePapoPageState extends State<BatePapoPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Center(
          child: Text(
            "Bate-Papo",
            style: TextStyle(
                fontSize: 24, fontWeight: FontWeight.bold, color: Colors.white),
          ),
        ),
        backgroundColor: Color.fromRGBO(3, 166, 150, 1),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
          child: Center(
            child: Container(
              child: Column(
                children: [
                  ContainerBP(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
