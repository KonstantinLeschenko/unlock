import 'package:flutter/material.dart';

class NotificationsPage extends StatelessWidget {
  const NotificationsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Notifications'),
      ),
      body: Stack(children: [
        SizedBox(
          width: MediaQuery.sizeOf(context).width,
          height: MediaQuery.sizeOf(context).height,
          child: Image.asset(
              MediaQuery.of(context).platformBrightness == Brightness.dark
                  ? 'assets/bg_notifications_dark.png'
                  : 'assets/bg_notifications_light.png',
              fit: BoxFit.fill),
        ),
        Container(
          decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          border: Border.all(
                      color: Theme.of(context).brightness == Brightness.dark
                          ? Colors.grey
                          : Colors.white),
          color:
              MediaQuery.of(context).platformBrightness == Brightness.dark
                  ? const Color(0xff101212)
                  : const Color(0xfffde0c7)),
          child: const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text('Sometimes later there would be notifications from Firebase notifications'),
          ),        
        )
      ]),
    );
  }
}
