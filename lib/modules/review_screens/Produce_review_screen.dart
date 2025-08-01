import 'package:flutter/material.dart';

class ProduceReviewScreen extends StatefulWidget {
  const ProduceReviewScreen({super.key});

  @override
  State<ProduceReviewScreen> createState() => _ProduceReviewScreenState();
}

class _ProduceReviewScreenState extends State<ProduceReviewScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(child: Text("Reviews", style: TextStyle(fontSize: 18))),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('245 Reviews'),
                    Container(
                      height: 60,
                      width: 90,
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 243, 136, 70),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Center(child: Text('Add Review')),
                    ),
                  ],
                ),
              ),
              Text('4.5 *****'),
              Container(
                decoration: BoxDecoration(color: Colors.blueGrey),
                height: 100,
                width: double.infinity,
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,

                      children: [
                        Image.asset(''),
                        Column(
                          children: [
                            Text('jeny wilsion'),
                            Text('13 sep  2020'),
                          ],
                        ),
                        Column(
                          children: [Text('4.8 rating '), Text('************')],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 5),
              Container(
                decoration: BoxDecoration(color: Colors.blueGrey),
                height: 100,
                width: double.infinity,
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,

                      children: [
                        Image.asset(''),
                        Column(
                          children: [
                            Text('jeny wilsion'),
                            Text('13 sep  2020'),
                          ],
                        ),
                        Column(
                          children: [Text('4.8 rating '), Text('************')],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 5),
              Container(
                decoration: BoxDecoration(color: Colors.blueGrey),
                height: 100,
                width: double.infinity,
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,

                      children: [
                        Image.asset(''),
                        Column(
                          children: [
                            Text('jeny wilsion'),
                            Text('13 sep  2020'),
                          ],
                        ),
                        Column(
                          children: [Text('4.8 rating '), Text('************')],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
