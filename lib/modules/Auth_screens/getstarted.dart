import 'package:e_commereceapp/widgets/custombutton.dart';
import 'package:flutter/material.dart';

class Getstarted extends StatelessWidget {
  const Getstarted({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Text('Let,s Get Started', style: TextStyle(fontSize: 20)),
          SizedBox(height: 100),
          Custombutton(text: 'Facebook'),
          SizedBox(height: 5),
          Custombutton(text: 'Twitter'),
          SizedBox(height: 5),
          Custombutton(text: 'Google'),
          SizedBox(height: 50),
          Row(
            children: [
              Text('Alredy have an account'),
              TextButton(onPressed: () {}, child: Text('Signin')),
            ],
          ),
          SizedBox(height: 5),
          Custombutton(text: 'Create an account'),
        ],
      ),
    );
  }
}
