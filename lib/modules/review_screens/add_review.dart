import 'package:e_commereceapp/modules/review_screens/controller/controller.dart';
import 'package:e_commereceapp/widgets/custombutton.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get/state_manager.dart';

class AddReview extends StatelessWidget {
  const AddReview({super.key});

  @override
  Widget build(BuildContext context) {
    final reivewcontroller = Get.put(Reivewcontroller());
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(child: Text('Add Review')),
            Text('Name'),
            TextField(
              decoration: InputDecoration(
                hintText: 'Type your name',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
            Text('Add Review'),
            Text('How was your experince'),
            TextField(
              maxLines: 5,
              decoration: InputDecoration(
                hintText: 'Type your name',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
            Text('star'),
            GetBuilder<Reivewcontroller>(
              builder: (controller) {
                return Slider(
                  value: controller.slidevalue,
                  min: 1,
                  max: 3,
                  onChanged: controller.sliderfunction,
                );
              },
            ),
            //Custombutton(text: 'Submit Review'),
          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: EdgeInsets.all(12),
        child: Custombutton(text: 'Submit Review'),
      ),
    );
  }
}
