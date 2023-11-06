import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

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
              onTap: () => context.push('/user'),
              child: const Icon(Icons.account_circle)),
        ],
      ),
      drawer: Drawer(
        child: Column(
          children: [
            const DrawerHeader(child: Text('')),
            TextButton(
                onPressed: () {
                  context.pop();
                  context.push('/learning');
                },
                child: const Text('Learning')),
            TextButton(
                onPressed: () {
                  context.pop();
                  context.push('/practices');
                },
                child: const Text('Practices')),
            TextButton(
                onPressed: () {
                  context.pop();
                  context.push('/about');
                },
                child: const Text('About this app')),
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
                            onPressed: () => context.pop(),
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
}
