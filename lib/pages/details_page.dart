import 'package:flutter/material.dart';
class DetailsPage extends StatelessWidget {
  final String image;
  final String heroTag;

  const DetailsPage({super.key, required this.image, required this.heroTag});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Details Page"),
      ),
      body: Hero(tag:'productImage_$heroTag',child: Image.network(image))
    );
  }
}
