import 'package:e_commereceapp/core/theme/app_colors.dart';
import 'package:e_commereceapp/modules/Dashboard/widgets/gridview.dart';
import 'package:e_commereceapp/modules/Dashboard/widgets/produce_container.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> imageList = [
      'assets/images/img1.png',
      'assets/images/img2.png',
      'assets/images/img3.png',
      'assets/images/img4.png',
    ];

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset('assets/images/Menu.png'),
                    Image.asset('assets/images/Cart.png'),
                  ],
                ),
                const SizedBox(height: 10),
                const Text(
                  'Hello',
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
                ),
                const Text('Welcome to Laza'),
                const SizedBox(height: 10),
                Row(
                  children: [
                    Expanded(
                      child: TextFormField(
                        decoration: InputDecoration(
                          prefixIcon: const Icon(Icons.search),
                          hintText: 'Search...',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: 5),
                    Image.asset('assets/images/Voice.png'),
                  ],
                ),
                const SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      'Choose Brand',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Text('View All'),
                  ],
                ),
                const SizedBox(height: 8),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      ProduceContainer(
                        height: 30,
                        width: 70,
                        color: kccontainer,
                        text: 'Cloth',
                      ),
                      const SizedBox(width: 5),
                      ProduceContainer(
                        height: 30,
                        width: 70,
                        color: kccontainer,
                        text: 'Shoes',
                      ),
                      const SizedBox(width: 5),
                      ProduceContainer(
                        height: 30,
                        width: 70,
                        color: kccontainer,
                        text: 'Watches',
                      ),
                      const SizedBox(width: 5),
                      ProduceContainer(
                        height: 30,
                        width: 70,
                        color: kccontainer,
                        text: 'Bags',
                      ),
                      const SizedBox(width: 5),
                      ProduceContainer(
                        height: 30,
                        width: 70,
                        color: kccontainer,
                        text: 'Others',
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 15),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      'New Arrival',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Text('View All'),
                  ],
                ),
                const SizedBox(height: 20),
                Gridview(images: imageList), // ✅ No need for SizedBox
              ],
            ),
          ),
        ),
      ),
    );
  }
}
