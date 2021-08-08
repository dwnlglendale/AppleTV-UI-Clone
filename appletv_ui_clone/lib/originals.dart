import 'package:appletv_ui_clone/gridcontainer.dart';
import 'package:flutter/material.dart';

class Originals extends StatefulWidget {
  const Originals({Key? key}) : super(key: key);

  @override
  _OriginalsState createState() => _OriginalsState();
}

class _OriginalsState extends State<Originals> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Stack(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 10),
                  child: Image(image: AssetImage("assets/a1.png")),
                ),
                Container(
                  height: 150,
                  child: ListView(
                    physics: BouncingScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    children: [
                      PhotoList(
                        image: AssetImage("assets/movie5.jpg"),
                      ),
                      PhotoList(
                        image: AssetImage("assets/movie3.jpg"),
                      ),
                      PhotoList(image: AssetImage("assets/movie1.jpg"))
                    ],
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
