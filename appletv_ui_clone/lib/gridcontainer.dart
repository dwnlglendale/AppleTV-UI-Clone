import 'package:flutter/material.dart';

class SearchGrid extends StatelessWidget {
  const SearchGrid({Key? key, required this.image}) : super(key: key);

  final ImageProvider image;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 100,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(14),
      ),
      child: Image(
        image: image,
        fit: BoxFit.fill,
      ),
    );
  }
}
