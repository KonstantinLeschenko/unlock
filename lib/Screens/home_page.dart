import 'package:flutter/material.dart';
import 'menu_page.dart';
import 'user_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool isGenerated = false;

  @override
  void initState() {
    super.initState();
    // bool isGenerated;
  }

  @override
  Widget build(BuildContext context) {
    var myScreen = MediaQuery.sizeOf(context);

    return Scaffold(
      body: Stack(
        children: [
          SizedBox(
            width: myScreen.width,
            height: myScreen.height,
            child: Image.asset('assets/bg.png', fit: BoxFit.fill),
          ),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(15, 15, 15, 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: navigateMenuPage,
                      child: Container(
                          decoration: BoxDecoration(
                              color: const Color(0xFF91708e),
                              borderRadius: BorderRadius.circular(5)),
                          child: ImageIcon(
                            const AssetImage('assets/ic_menu.png'),
                            size: myScreen.width / 10,
                            color: Colors.white,
                          )),
                    ),
                    GestureDetector(
                      onTap: navigateUserPage,
                      child: Container(
                          decoration: BoxDecoration(
                              color: const Color(0xFF91708e),
                              borderRadius: BorderRadius.circular(5)),
                          child: ImageIcon(
                            const AssetImage('assets/ic_user.png'),
                            size: myScreen.width / 10,
                            color: Colors.white,
                          )),
                    ),
                  ],
                ),
              ),
              Expanded(
                  child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Image.asset(
                        genImage(),
                        fit: BoxFit.fill,
                      ))),
              GestureDetector(
                onTap: () {
                  setState(() {
                    isGenerated = !isGenerated;
                  });
                },
                child: Container(
                  width: myScreen.width / 1.5,
                  height: myScreen.height / 15,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: const Color(0xFF91708e),
                  ),
                  child: const Center(
                    child: Text(
                      'Your card of a day',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 4, 0, 4),
                child: TextButton.icon(
                  onPressed: () => showDialog<String>(
                      context: context,
                      builder: (BuildContext context) => AlertDialog(
                            title: const Text('What is this ?'),
                            content: const Text('About card of a day'),
                            backgroundColor: Colors.yellow[200],
                            actions: [
                              TextButton(
                                onPressed: () => Navigator.pop(context, 'OK'),
                                child: const Text('OK'),
                              ),
                            ],
                          )),
                  icon: const ImageIcon(
                    AssetImage('assets/ic_info.png'),
                    size: 20,
                  ),
                  label: const Text(
                    'Learn more about card of a day',
                    style: TextStyle(color: Colors.black),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }

  String genImage() {
    String path;
    isGenerated ? path = 'assets/gen_card.png' : path = 'assets/ic_card.png';
    return path;
  }

  navigateMenuPage() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => const MenuPage()));
  }

  navigateUserPage() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => const UserPage()));
  }
}
