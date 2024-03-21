import 'package:flutter/material.dart';

class ContainerWidget extends StatelessWidget {
  const ContainerWidget({super.key,required this.imageUrl});
  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return Padding(padding:
    const EdgeInsets.all(15.0),
    child: Container(
      width: MediaQuery.of(context).size.width/1.7,
      height: MediaQuery.of(context).size.height/2.9,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
      ),
      clipBehavior: Clip.hardEdge,
      child: Image.network(
        imageUrl,
        fit: BoxFit.cover,
      ),
    ),
    );
  }
}