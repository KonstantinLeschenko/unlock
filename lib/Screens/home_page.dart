import 'package:flutter/material.dart';
import 'package:unlock/Screens/about_page.dart';
import 'package:unlock/Screens/learning_page.dart';
import 'package:unlock/Screens/practices_page.dart';
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
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          GestureDetector(
              onTap: navigateUserPage, child: const Icon(Icons.account_circle)),
        ],
      ),
      drawer: Drawer(
        child: Column(
          children: [
            const DrawerHeader(child: Text('')),
            TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => LearningPage()));
                },
                child: const Text('Learning')),
            TextButton(onPressed: () {
                  Navigator.of(context).pop();
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const PracticesPage()));
                }, child: const Text('Practices')),
            TextButton(onPressed: () {
                  Navigator.of(context).pop();
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const AboutPage()));
                }, child: const Text('About this app')),
          ],
        ),
      ),
      body: Column(
        children: [
          Expanded(
              child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: AspectRatio(
                    aspectRatio: 914 / 1317,
                    child: Image.asset(
                      genImage(),
                      fit: BoxFit.fill,
                    ),
                  ))),
          ElevatedButton(
              onPressed: () => setState(() {
                    isGenerated = !isGenerated;
                  }),
              child: const Text('Your card of a day')),
          Padding(
            padding: const EdgeInsets.all(8),
            child: TextButton.icon(
              onPressed: () => showDialog<String>(
                  context: context,
                  builder: (BuildContext context) => AlertDialog(
                        title: const Text('What is this ?'),
                        content: const Text('About card of a day'),
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
              ),
            ),
          ),
        ],
      ),
    );
  }

  String genImage() {
    String path;
    isGenerated
        ? path = 'assets/gen_card.png'
        : Theme.of(context).brightness == Brightness.dark
            ? path = 'assets/card_dark.png'
            : path = 'assets/card_light.png';
    return path;
  }

  navigateUserPage() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => const UserPage()));
  }
}
