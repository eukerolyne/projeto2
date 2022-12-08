import 'package:flutter/material.dart';

class PefilPage extends StatelessWidget {
  const PefilPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        automaticallyImplyLeading: false,
      ),
      body: Center(child: const Text("Perfil")),
    );
  }
}
