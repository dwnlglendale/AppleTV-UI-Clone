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

class PhotoList extends StatelessWidget {
  const PhotoList({Key? key, required this.image}) : super(key: key);

  final ImageProvider image;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        child: Image(
          image: image,
          fit: BoxFit.cover,
        ),
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
        height: 150,
      ),
    );
  }
}
