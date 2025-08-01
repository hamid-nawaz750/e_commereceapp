import 'package:e_commereceapp/widgets/custombutton.dart';
import 'package:flutter/material.dart';

class Checkout extends StatelessWidget {
  const Checkout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Text('Cart'),
          Container(
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
            child: Row(
              children: [
                Image.asset(''),
                Column(
                  children: [Text('Men Tie ,die t Shirt\n Nike shorts wear')],
                ),
              ],
            ),
          ),
          SizedBox(height: 10),
          Container(
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
            child: Row(
              children: [
                Image.asset(''),
                Column(
                  children: [Text('Men Tie ,die t Shirt\n Nike shorts wear')],
                ),
              ],
            ),
          ),
          Text('Delivery address'),
          Row(
            children: [
              Container(
                height: 30,
                width: 30,
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(50),
                ),
              ),
              Text('chatahkt sunjomi 12/8 AB'),
            ],
          ),
          Text('Payment Methoad'),
        ],
      ),
      bottomNavigationBar: Padding(
        padding: EdgeInsets.all(12),
        child: Custombutton(text: 'Checkout'),
      ),
    );
  }
}
