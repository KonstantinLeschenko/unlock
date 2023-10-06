import 'package:flutter/material.dart';
import 'package:unlock/Screens/practice_page.dart';
import 'package:unlock/Widgets/my_app_bar.dart';
import 'package:unlock/Widgets/my_menu_container.dart';

class MenuPage extends StatelessWidget {
  const MenuPage({super.key});

  @override
  Widget build(BuildContext context) {
    navigatePracticePage() {
      Navigator.push(context,
          MaterialPageRoute(builder: (context) => const PracticePage()));
    }

    double screenWidth = MediaQuery.sizeOf(context).width;
    double screenHeight = MediaQuery.sizeOf(context).height;

    return Scaffold(
      body: Stack(
        children: [
          SizedBox(
            width: screenWidth,
            height: screenHeight,
            child: Image.asset('assets/bg_menu.png', fit: BoxFit.fill),
          ),
          Column(
            children: [
              MyAppBar(title: 'Menu'),
              Expanded(
                child: ListView(
                  children: [
                    MyMenuContainer(
                      assetName: 'assets/ic_learning.png',
                      function: () {},
                    ),
                    MyMenuContainer(
                        assetName: 'assets/ic_practice.png',
                        function: navigatePracticePage),
                    MyMenuContainer(
                      assetName: 'assets/ic_buy.png',
                      function: () {},
                    ),
                    MyMenuContainer(
                      assetName: 'assets/ic_consultation.png',
                      function: () {},
                    ),
                    MyMenuContainer(
                      assetName: 'assets/ic_feedback.png',
                      function: () {},
                    ),
                    MyMenuContainer(
                      assetName: 'assets/ic_about.png',
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
