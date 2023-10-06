import 'package:flutter/material.dart';

import '../Data/constance.dart';
import '../Widgets/my_menu_container.dart';
import 'home_page.dart';

class UserPage extends StatelessWidget {
  const UserPage({super.key});

  @override
  Widget build(BuildContext context) {
    navigateHomePage() {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => const HomePage()));
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
              Padding(
                padding: const EdgeInsets.fromLTRB(15, 15, 15, 0),
                child: Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Container(
                          decoration: BoxDecoration(
                              color: Constance().appColor,
                              borderRadius: BorderRadius.circular(5)),
                          child: ImageIcon(
                            const AssetImage('assets/ic_backward.png'),
                            size: screenWidth / 10,
                            color: Colors.white,
                          )),
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    GestureDetector(
                      onTap: navigateHomePage,
                      child: Container(
                          decoration: BoxDecoration(
                              color: Constance().appColor,
                              borderRadius: BorderRadius.circular(5)),
                          child: ImageIcon(
                            const AssetImage('assets/ic_home.png'),
                            size: screenWidth / 10,
                            color: Colors.white,
                          )),
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    Expanded(
                      child: Container(
                        height: screenWidth / 10,
                        decoration: BoxDecoration(
                            color: Constance().appColor,
                            borderRadius: BorderRadius.circular(5)),
                        child: const Center(
                            child: Text(
                          'Personal Account',
                          style: TextStyle(color: Colors.white),
                        )),
                      ),
                    )
                  ],
                ),
              ),
              Expanded(
                child: ListView(
                  children: [
                    MyMenuContainer(assetName: 'assets/ic_user_account.png'),
                    MyMenuContainer(assetName: 'assets/ic_feedback.png'),
                    MyMenuContainer(assetName: 'assets/ic_bell.png'),
                    MyMenuContainer(assetName: 'assets/ic_consultation.png'),
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
