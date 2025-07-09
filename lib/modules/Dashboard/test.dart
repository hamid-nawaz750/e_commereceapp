import 'package:e_commereceapp/core/constant_string/constant.dart';
import 'package:e_commereceapp/core/theme/app_colors.dart';
import 'package:flutter/material.dart';

class Test extends StatelessWidget {
  const Test({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 200,
            width: 200,
            child: Container(
              color: kccontainer,
              child: Row(
                children: [
                  Text(Appstring.containerstring),
                  Text(Appstring.data),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
