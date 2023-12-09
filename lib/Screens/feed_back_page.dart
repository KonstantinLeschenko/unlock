import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:unlock/data/auth.dart';
import 'package:unlock/generated/l10n.dart';
import '../data/cloud_firestore.dart';

class FeedBackPage extends StatefulWidget {
  const FeedBackPage({super.key});

  @override
  State<FeedBackPage> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<FeedBackPage> {
  CloudFirestore? service;
  final messageTheme = TextEditingController();
  final messageText = TextEditingController();

  @override
  void initState() {
    service = CloudFirestore(FirebaseFirestore.instance);
    super.initState();
  }

  @override
  void dispose() {
    messageTheme.dispose();
    messageText.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(S.of(context).feedBackPageTitle),
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
        Opacity(
          opacity: 0.8,
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(30.0),
              child: Container(
                width: MediaQuery.sizeOf(context).width,
                height: MediaQuery.sizeOf(context).height,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    border: Border.all(
                        color: Theme.of(context).brightness == Brightness.dark
                            ? Colors.grey
                            : Colors.white),
                    color: MediaQuery.of(context).platformBrightness ==
                            Brightness.dark
                        ? const Color(0xff101212)
                        : const Color(0xfffde0c7)),
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: TextField(
                                controller: messageTheme,
                                decoration: InputDecoration(
                                    hintText: S.of(context).themeOfTheMessege),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: SizedBox(
                                height: 400,
                                child: TextField(
                                  controller: messageText,
                                  maxLines: null,
                                  expands: true,
                                  decoration: InputDecoration(
                                      hintText: S.of(context).yourMessege),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: ElevatedButton(
                          onPressed: () {
                            service?.addFeedBack({
                              'date': DateTime.now(),
                              'text': messageText.text,
                              'theme': messageTheme.text,
                              'user': Auth().currentUser?.email.toString(),
                            });

                            messageText.clear();
                            messageTheme.clear();
                            Navigator.pop(context);
                          },
                          child: Text(S.of(context).send),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
        )
      ]),
    );
  }
}
