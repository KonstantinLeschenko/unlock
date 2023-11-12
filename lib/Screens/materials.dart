import 'package:flutter/material.dart';

import '../theme/theme_constants.dart';

class MaterialsPage extends StatelessWidget {
  final String name;
  // ignore: prefer_const_constructors_in_immutables
  MaterialsPage({super.key, required this.name});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(name),
      ),
      body: Stack(
        children: [
          SizedBox(
            width: MediaQuery.sizeOf(context).width,
            height: MediaQuery.sizeOf(context).height,
            child: Image.asset(
                MediaQuery.of(context).platformBrightness == Brightness.dark
                    ? 'assets/bg_notifications_dark.png'
                    : 'assets/bg_notitfications_light.png',
                fit: BoxFit.fill),
          ),
          Center(
            child: Opacity(
              opacity: 0.8,
              child: SizedBox(
                width: MediaQuery.sizeOf(context).width - 60,
                height: MediaQuery.sizeOf(context).height - 200,
                child: Container(
                  decoration: BoxDecoration(
                      color: Theme.of(context).brightness == Brightness.dark
                          ? COLOR_PRIMARY_DARK
                          : COLOR_PRIMARY_LIGHT,
                      borderRadius:
                          const BorderRadius.all(Radius.circular(30))),
                  child: Center(child: Text(name)),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
