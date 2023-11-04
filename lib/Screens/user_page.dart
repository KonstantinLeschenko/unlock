import 'package:flutter/material.dart';
import 'package:unlock/Screens/consultation_page.dart';
import 'package:unlock/Screens/feed_back_page.dart';
import 'package:unlock/Screens/notifications.dart';
import 'package:unlock/Screens/profile_page.dart';
import 'package:unlock/theme/theme_constants.dart';

class UserPage extends StatelessWidget {
  const UserPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Personal Account'),
      ),
      body: Stack(
        children: [
          SizedBox(
            width: MediaQuery.sizeOf(context).width,
            height: MediaQuery.sizeOf(context).height,
            child: Image.asset(
                MediaQuery.of(context).platformBrightness == Brightness.dark
                    ? 'assets/bg_user_page_dark.png'
                    : 'assets/bg_user_page_light.png',
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
                    GestureDetector(
                        onTap: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const ProfilePage())),
                        child: const Icon(Icons.account_box)),
                    GestureDetector(
                        onTap: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const FeedBackPage())),
                        child: const Icon(Icons.message)),
                    GestureDetector(
                        onTap: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    const ConsultationPage())),
                        child: const Icon(Icons.calendar_today)),
                    GestureDetector(
                        onTap: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    const NotificationsPage())),
                        child: const Icon(Icons.notifications))
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
