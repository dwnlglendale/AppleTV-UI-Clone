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
      body: Center(
        child: Text("Originals"),
      ),
    );
  }
}
