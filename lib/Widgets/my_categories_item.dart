import 'package:flutter/material.dart';
import '../Data/constants.dart';

// ignore: must_be_immutable
class MyCategoriesItem extends StatelessWidget {
  String title;
  MyCategoriesItem({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.sizeOf(context).height;
    return Padding(
      padding: const EdgeInsets.all(8),
      child: Container(
        height: screenHeight / 12,
        decoration: BoxDecoration(
            color: Constants().appColor,
            borderRadius: BorderRadius.circular(10)),
        child: Center(
            child: Text(
          title,
          style: const TextStyle(color: Colors.white, fontSize: 20),
        )),
      ),
    );
  }
}
