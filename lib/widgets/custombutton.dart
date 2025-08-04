import 'package:e_commereceapp/core/theme/app_colors.dart';
import 'package:flutter/material.dart';

class Custombutton extends StatelessWidget {
  final String text;
  const Custombutton({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      width: 300,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: kbuttoncolor,
      ),
      child: Center(child: Text(text)),
    );
  }
}
