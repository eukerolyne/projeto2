import 'package:flutter/material.dart';
import 'package:projeto2/login/loginpage.dart';
import 'package:projeto2/perfil/containers/containerDados.dart';
import 'package:projeto2/perfil/containers/containerFoto.dart';

class PefilPage extends StatelessWidget {
  const PefilPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Color.fromRGBO(3, 166, 150, 1),
        title: Center(
          child: const Text("Meu Perfil",
              style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.white)),
        ),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.pop(
                  context,
                  MaterialPageRoute(builder: (context) => LoginPage()),
                );
              },
              icon: Icon(
                Icons.logout,
                color: Colors.white,
              )),
        ],
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
            child: Column(
              children: [
                ContainerFoto(),
                ContainerDados(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
