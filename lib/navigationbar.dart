import 'package:flutter/material.dart';
import 'package:projeto2/batepapo/batepapopage.dart';
import 'package:projeto2/inicial/conteudoInicial.dart';
import 'package:projeto2/disciplinas/disciplinaspage.dart';
import 'package:projeto2/perfil/perfilpage.dart';

class InicialPage extends StatefulWidget {
  const InicialPage({Key? key}) : super(key: key);
  

  @override
  State<StatefulWidget> createState() => _InicialPageState();
}

class _InicialPageState extends State<InicialPage> {
  int _currentTabIndex = 0;
  @override
  Widget build(BuildContext context) {
    final _kTabPages = <Widget>[
      const Center(child: ConteudoInicialPage()),
      const Center(child: DisciplinasPage()),
      const Center(child: BatePapoPage()),
      const Center(child: PefilPage()),
    ];
    final _kBottmonNavBarItems = <BottomNavigationBarItem>[
      const BottomNavigationBarItem(
          icon: Icon(Icons.home), label: 'Inicio'),
      const BottomNavigationBarItem(
          icon: Icon(Icons.task), label: 'Disciplinas'),
      const BottomNavigationBarItem(
          icon: Icon(Icons.forum), label: 'Bate-papo'),
      const BottomNavigationBarItem(
          icon: Icon(Icons.account_circle), label: 'Perfil'),
    ];
    assert(_kTabPages.length == _kBottmonNavBarItems.length);
    final bottomNavBar = BottomNavigationBar(
      items: _kBottmonNavBarItems,
      currentIndex: _currentTabIndex,
      type: BottomNavigationBarType.fixed,
      onTap: (int index) {
        setState(() {
          _currentTabIndex = index;
        });
      },
      fixedColor: Color.fromRGBO(242, 135, 5, 1),
      backgroundColor: Color.fromRGBO(3, 166, 150, 1),
      
      //Color.fromRGBO(3, 166, 150, 1),
      //Color.fromRGBO(1, 46, 64, 1),
    );
    return Scaffold(
      body: _kTabPages[_currentTabIndex],
      bottomNavigationBar: bottomNavBar,
    );
  }
}
