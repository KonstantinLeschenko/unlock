import 'package:flutter/material.dart';

// ignore: must_be_immutable
class MyMenuContainer extends StatelessWidget {
  String assetName;
  // ignore: prefer_typing_uninitialized_variables
  final function;

  MyMenuContainer({super.key, required this.assetName, required this.function});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.sizeOf(context).width;

    return Row(
      children: [
        GestureDetector(
          onTap: function,
          child: Padding(
            padding: const EdgeInsets.fromLTRB(15, 15, 0, 0),
            child: Container(
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(10)),
                child: ImageIcon(
                  AssetImage(
                    assetName,
                  ),
                  color: Colors.white,
                  size: screenWidth / 5 + 15,
                )),
          ),
        ),
      ],
    );
  }
}
