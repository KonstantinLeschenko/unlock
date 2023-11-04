import 'package:flutter/material.dart';
import '../theme/theme_constants.dart';

class LearningPage extends StatelessWidget {
  LearningPage({super.key});

  List<String> articles = [
    'MAC - what is it and what is it for?',
    'Types of MAC decks',
    'Principles of working with MAC',
    'Strategies for working with MAC',
    'Methods of application',
    'MAC - diagnostics',
    'MAC - as an auxiliary tool',
    'MAC - as a full-fledged working tool',
    'Scheme of a psychocorrection session',
    'MAC - fixation',
    'Request options',
    'Session end options'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Learning'),
      ),
      body: Stack(
        children: [
          SizedBox(
            width: MediaQuery.sizeOf(context).width,
            height: MediaQuery.sizeOf(context).height,
            child: Image.asset(
                MediaQuery.of(context).platformBrightness == Brightness.dark
                    ? 'assets/bg_learning_dark.png'
                    : 'assets/bg_learning_light.png',
                fit: BoxFit.fill),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Opacity(
              opacity: 0.8,
              child: Container(
                height: MediaQuery.sizeOf(context).height / 2,
                decoration: BoxDecoration(
                    border: Border.all(
                        color: Theme.of(context).brightness == Brightness.dark
                            ? Colors.grey
                            : Colors.white),
                    color: Theme.of(context).brightness == Brightness.dark
                        ? COLOR_PRIMARY_DARK
                        : COLOR_PRIMARY_LIGHT,
                    borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30))),
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: ListView.builder(
                      itemCount: articles.length,
                      itemBuilder: (BuildContext context, int index) {
                        return ListTile(
                          title: Text(articles[index]),
                        );
                      }),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
