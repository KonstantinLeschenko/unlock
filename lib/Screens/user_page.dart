import 'package:flutter/material.dart';
import 'package:unlock/Widgets/my_app_bar.dart';
import '../Widgets/my_menu_container.dart';

class UserPage extends StatelessWidget {
  const UserPage({super.key});

  @override
  Widget build(BuildContext context) {
    var myScreen = MediaQuery.sizeOf(context);

    return Scaffold(
      body: Stack(
        children: [
          SizedBox(
            width: myScreen.width,
            height: myScreen.height,
            child: Image.asset('assets/bg_menu.png', fit: BoxFit.fill),
          ),
          Column(
            children: [
              MyAppBar(title: 'Personal Account'),
              Expanded(
                child: ListView(
                  children: [
                    MyMenuContainer(
                      assetName: 'assets/ic_user_account.png',
                      function: () {},
                    ),
                    MyMenuContainer(
                      assetName: 'assets/ic_feedback.png',
                      function: () {},
                    ),
                    MyMenuContainer(
                      assetName: 'assets/ic_bell.png',
                      function: () {},
                    ),
                    MyMenuContainer(
                      assetName: 'assets/ic_consultation.png',
                      function: () {},
                    ),
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
