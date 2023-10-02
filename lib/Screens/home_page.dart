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
    return Scaffold(
      body: Stack(
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: Image.asset('assets/bg.jpg', fit: BoxFit.fill),
          ),
          Column(
            children: [
              SizedBox(height: 30,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: GestureDetector(
                      onTap: navigateMenuPage,
                      child: Container(
                          decoration: BoxDecoration(
                              color: Colors.purple,
                              borderRadius: BorderRadius.circular(10)),
                          child: const Icon(
                            Icons.menu,
                            size: 40,
                            color: Colors.white,
                          )),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: GestureDetector(
                      onTap: navigateUserPage,
                      child: Container(
                          decoration: BoxDecoration(
                              color: Colors.purple,
                              borderRadius: BorderRadius.circular(10)),
                          child: const Icon(
                            Icons.account_circle,
                            size: 40,
                            color: Colors.white,
                          )),
                    ),
                  ),
                ],
              ),
              Expanded(
                  child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Image.asset(
                        genImage(),
                        fit: BoxFit.fill,
                      ))),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                    onPressed: () {
                      setState(() {
                        isGenerated = !isGenerated;
                      });
                    },
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(Colors.purple)),
                    child: const Text(
                      'Твоя карта дня',
                      style: TextStyle(color: Colors.white),
                    )),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextButton.icon(
                  onPressed: () => showDialog<String>(
                      context: context,
                      builder: (BuildContext context) => AlertDialog(
                            title: Text('What is this ?'),
                            content: Text('About card of a day'),
                            backgroundColor: Colors.yellow,
                            actions: [
                              TextButton(
                                onPressed: () => Navigator.pop(context, 'OK'),
                                child: const Text('OK'),
                              ),
                            ],
                          )),
                  icon: const Icon(
                    Icons.info,
                    color: Colors.purple,
                  ),
                  label: const Text(
                    'Узнать подробнее про карту дня',
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
    isGenerated ? path = 'assets/gen_card.jpg' : path = 'assets/ic_card.jpg';
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
