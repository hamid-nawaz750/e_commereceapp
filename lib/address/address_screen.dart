import 'package:e_commereceapp/address/address_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AddressScreen extends StatelessWidget {
  const AddressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(AddressController());
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          TextField(
            decoration: InputDecoration(
              hintText: 'Enter name',
              border: OutlineInputBorder(),
            ),
          ),
          Row(
            children: [
              Expanded(child: TextField()),
              TextField(
                decoration: InputDecoration(hintText: 'Enter conutry name'),
              ),
              Expanded(
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'City Name',
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
            ],
          ),
          TextField(
            decoration: InputDecoration(
              hintText: 'Phone Number',
              border: OutlineInputBorder(),
            ),
          ),
          TextField(
            decoration: InputDecoration(
              hintText: 'Address',
              border: OutlineInputBorder(),
            ),
          ),
          Row(
            children: [
              Text('Save as a primary address'),
              GetBuilder<AddressController>(
                builder: (contrller) {
                  return Switch(
                    value: controller.isswitch,
                    onChanged: contrller.togolswitch,
                  );
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}
