import 'package:flutter/material.dart';
import 'package:unlock/data/messengers.dart';
import 'package:unlock/generated/l10n.dart';
import 'package:unlock/theme/theme_constants.dart';

class ConsultationPage extends StatelessWidget {
  const ConsultationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(S.of(context).consultationPageTitle),
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
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    // open Instagram
                    GestureDetector(
                        onTap: () async {
                          try {
                            await joinInstagram();
                          } on Exception {
                            // ignore: use_build_context_synchronously
                            ScaffoldMessenger.of(context).showSnackBar(
                                const SnackBar(
                                    content:
                                        Text('Instagram is not installed')));
                          }
                        },
                        child: const ImageIcon(
                            AssetImage('assets/ic_instagram.png'))),

                    // open telegram
                    GestureDetector(
                        onTap: () async {
                          try {
                            await joinTelegram();
                          } on Exception {
                            // ignore: use_build_context_synchronously
                            ScaffoldMessenger.of(context).showSnackBar(
                                const SnackBar(
                                    content:
                                        Text('Telegram is not installed')));
                          }
                        },
                        child: const ImageIcon(
                            AssetImage('assets/ic_telegram.png'))),

                    // open gmail
                    GestureDetector(
                        onTap: () async {
                          try {
                            await joinGmail();
                          } on Exception {
                            // ignore: use_build_context_synchronously
                            ScaffoldMessenger.of(context).showSnackBar(
                                const SnackBar(
                                    content: Text('Gmail is not installed')));
                          }
                        },
                        child: const ImageIcon(
                            AssetImage('assets/ic_google.png'))),
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
