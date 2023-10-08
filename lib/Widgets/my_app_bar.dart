import 'package:flutter/material.dart';
import '../Screens/home_page.dart';

// ignore: must_be_immutable
class MyAppBar extends StatelessWidget {
  String title;
  MyAppBar({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.sizeOf(context).width;

    navigateHomePage() {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => const HomePage()));
    }

    return Padding(
      padding: const EdgeInsets.all(8),
      child: Row(
        children: [
          GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Container(
                decoration: BoxDecoration(
                    color: const Color(0xFF91708e),
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
                    color: const Color(0xFF91708e),
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
                  color: const Color(0xFF91708e),
                  borderRadius: BorderRadius.circular(5)),
              child: Center(
                  child: Text(
                title,
                style: const TextStyle(color: Colors.white),
              )),
            ),
          )
        ],
      ),
    );
  }
}
