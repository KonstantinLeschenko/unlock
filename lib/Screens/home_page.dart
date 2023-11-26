import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:unlock/data/auth.dart';
import 'package:unlock/data/card_of_a_day_from_rirebase.dart';
import 'package:unlock/generated/l10n.dart';

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
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Column(
              children: [
                TextButton(
                    onPressed: () {
                      context.pop();
                      context.push('/learning');
                    },
                    child: Text(S.of(context).learning)),
                TextButton(
                    onPressed: () {
                      context.pop();
                      context.push('/practices');
                    },
                    child: Text(S.of(context).practices)),
                TextButton(
                    onPressed: () {
                      context.pop();
                      context.push('/about');
                    },
                    child: Text(S.of(context).aboutThisApp)),
              ],
            ),
            ElevatedButton(
                onPressed: () {
                  Auth().signOut();
                  context.pop();
                  context.go('/login');
                },
                child: Text(S.of(context).logOut))
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
                child: isGenerated
                    ? FutureBuilder(
                        future: CardOfADayFromFirebase().getData(),
                        builder: (context, snapshot) {
                          if (snapshot.connectionState ==
                              ConnectionState.done) {
                            return Image.network(
                              snapshot.data.toString(),
                              fit: BoxFit.fill,
                            );
                          }
                          return const Center(
                              child: CircularProgressIndicator());
                        },
                      )
                    : Image.asset(
                        Theme.of(context).brightness == Brightness.dark
                            ? 'assets/card_dark.png'
                            : 'assets/card_light.png',
                        fit: BoxFit.fill,
                      ),
              ),
            ),
          ),
          ElevatedButton(
              onPressed: () {
                setState(() {
                  isGenerated = !isGenerated;
                });
              },
              child: Text(S.of(context).yourCardOfADay)),
          Padding(
            padding: const EdgeInsets.all(8),
            child: TextButton.icon(
              onPressed: () => showDialog<String>(
                  context: context,
                  builder: (BuildContext context) => AlertDialog(
                        content: SingleChildScrollView(
                            child: Text(S.of(context).aboutCardOfADayText)),
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
              label: Text(S.of(context).aboutCardOfADay),
            ),
          ),
        ],
      ),
    );
  }
}
