import 'package:flutter/material.dart';
import 'package:unlock/Data/constance.dart';

// ignore: must_be_immutable
class MyMenuContainer extends StatelessWidget {
  String assetName;

  MyMenuContainer({super.key, required this.assetName});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.sizeOf(context).width;

    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(15, 15, 0, 0),
          child: Container(
              decoration: BoxDecoration(
                  color: Constance().appColor,
                  borderRadius: BorderRadius.circular(10)),
              child: ImageIcon(
                AssetImage(
                  assetName,
                ),
                color: Colors.white,
                size: screenWidth / 5 + 15,
              )),
        ),
      ],
    );
  }
}
