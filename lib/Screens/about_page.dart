import 'package:flutter/material.dart';
import '../theme/theme_constants.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('About this app'),
      ),
      body: Stack(
        children: [
          SizedBox(
            width: MediaQuery.sizeOf(context).width,
            height: MediaQuery.sizeOf(context).height,
            child: Image.asset(
                MediaQuery.of(context).platformBrightness == Brightness.dark
                    ? 'assets/bg_notifications_dark.png'
                    : 'assets/bg_notifications_light.png',
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
                  child: const Center(
                      child: Text('Later there will be abiut this app text')),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
