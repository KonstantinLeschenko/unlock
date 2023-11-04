import 'package:flutter/material.dart';
import 'package:unlock/theme/theme_constants.dart';

class ConsultationPage extends StatelessWidget {
  const ConsultationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sign up for a consultation'),
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
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: 100,
              decoration: BoxDecoration(
                  border: Border.all(
                      color: Theme.of(context).brightness == Brightness.dark
                          ? Colors.grey
                          : Colors.white),
                  color: Theme.of(context).brightness == Brightness.dark
                      ? COLOR_PRIMARY_DARK
                      : COLOR_PRIMARY_LIGHT,
                  borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30))),
              child: const Padding(
                padding: EdgeInsets.all(20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    // Wrap with GestureDetector and redirect to instagram
                    ImageIcon(AssetImage('assets/ic_instagram.png')),
                    // Wrap with GestureDetector and redirect to telegram
                    ImageIcon(AssetImage('assets/ic_telegram.png')),
                    // Wrap with GestureDetector and redirect to viber
                    ImageIcon(AssetImage('assets/ic_viber.png')),
                    // Wrap with GestureDetector and redirect to gmail
                    ImageIcon(AssetImage('assets/ic_google.png')),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
