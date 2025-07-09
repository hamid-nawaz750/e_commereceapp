import 'package:e_commereceapp/widgets/custombutton.dart';
import 'package:flutter/material.dart';

class Fullimagescreen extends StatelessWidget {
  final imagepath;
  const Fullimagescreen({super.key, required this.imagepath});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(imagepath),
        SizedBox(height: 20),
        Custombutton(text: 'Add to Cart'),
      ],
    );
  }
}
