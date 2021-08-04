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
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: GridView(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            crossAxisSpacing: 3,
            mainAxisSpacing: 3,
          ),
          children: [
            Container(
              width: 100,
              height: 100,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(14),
                color: Colors.blue,
              ),
              child: Center(child: Text("Hello")),
            ),
            Container(
              width: 100,
              height: 100,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(14),
                color: Colors.blue,
              ),
              child: Center(child: Text("Hello")),
            ),
            Container(
              width: 100,
              height: 100,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(14),
                color: Colors.blue,
              ),
              child: Center(child: Text("Hello")),
            ),
            Container(
              width: 100,
              height: 100,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(14),
                color: Colors.blue,
              ),
              child: Center(child: Text("Hello")),
            ),
          ],
        ),
      ),
    );
  }
}
