import 'package:flutter/material.dart';

class ContainerFotoBT extends StatelessWidget {
  const ContainerFotoBT({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.only(
          top: 22,
          right: 6,
          left: 6,
        ),
        child: Container(
          width: double.infinity,
          height: 350.0,
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                CircleAvatar(
                  backgroundImage: NetworkImage(
                    "https://www.rd.com/wp-content/uploads/2017/09/01-shutterstock_476340928-Irina-Bg.jpg",
                  ),
                  radius: 40.0,
                ),
                // Text(
                //   'Kerolyne Dias Ribeiro',
                //   style: TextStyle(
                //     color: Colors.black,
                //     fontWeight: FontWeight.bold,
                //     fontSize: 30,
                //   ),
                // ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
