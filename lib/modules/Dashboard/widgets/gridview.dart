import 'package:e_commereceapp/modules/Dashboard/widgets/fullimagescreen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Gridview extends StatelessWidget {
  final List<String> images;

  const Gridview({super.key, required this.images});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: images.length,
      shrinkWrap: true, //  Important
      physics:
          const NeverScrollableScrollPhysics(), // To prevent conflict with parent scroll
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2, // 2 images per row
        crossAxisSpacing: 20,
        mainAxisSpacing: 70,
        childAspectRatio: 1,
      ),
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () {
            Get.to(Fullimagescreen(imagepath: images[index]));
          },
          child: Stack(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Image.asset(images[index], fit: BoxFit.cover),
              ),
              Positioned(top: 8, right: 8, child: Icon(Icons.favorite)),
            ],
          ),
        );
      },
    );
  }
}
