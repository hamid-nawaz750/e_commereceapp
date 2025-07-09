import 'package:flutter/material.dart';

class ProduceContainer extends StatelessWidget {
  final double height;
  final double width;
  final color;
  final String text;

  const ProduceContainer({
    super.key,
    required this.height,
    required this.width,
    required this.color,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Center(child: Text(text)),
    );
  }
}
