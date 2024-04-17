import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Skeleton from Minecraft'),
          centerTitle: true,
        ),
        body: const Center(
          child: SkeletonWidget(),
        ),
      ),
    );
  }
}

class SkeletonWidget extends StatelessWidget {
  const SkeletonWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white70,
      margin: const EdgeInsets.all(20.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(
            width: 200,
            height: 200,
            child: Stack(
              children: [
                //Head
                Positioned(
                  top: 50,
                  left: 50,
                  child: Container(
                    width: 100,
                    height: 100,
                    color: Colors.grey,
                  ),
                ),
                //Eyes
                Positioned(
                  top: 89,
                  left: 70,
                  child: Container(
                    width: 20,
                    height: 14,
                    color: Colors.black,
                  ),
                ),
                Positioned(
                  top: 89,
                  left: 110,
                  child: Container(
                    width: 20,
                    height: 14,
                    color: Colors.black,
                  ),
                ),
                //Nose
                Positioned(
                  top: 106,
                  left: 90,
                  child: Container(
                    width: 20,
                    height: 11,
                    color: Colors.black45,
                  ),
                ),
                //Mouth
                Positioned(
                  top: 118,
                  left: 70,
                  child: Container(
                    width: 63,
                    height: 15,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 20),
          const Text(
            "A skeleton is an undead hostile mob that performs ranged attacks with a bow",
            textAlign: TextAlign.center,
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 30),
        ],
      ),
    );
  }
}