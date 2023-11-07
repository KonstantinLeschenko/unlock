import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import '../data/my_api.dart';
import '../theme/theme_constants.dart';

final listArticlesProvider = StateProvider<List<String>>((_) {
  return MyAPI().myArticles;
});

class LearningPage extends ConsumerWidget {
  const LearningPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(),
      body: Stack(
        children: [
          SizedBox(
            width: MediaQuery.sizeOf(context).width,
            height: MediaQuery.sizeOf(context).height,
            child: Image.asset(
                MediaQuery.of(context).platformBrightness == Brightness.dark
                    ? 'assets/bg_practices_dark.png'
                    : 'assets/bg_practices_light.png',
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
                  padding: const EdgeInsets.all(15),
                  child: ListView.builder(
                      itemCount: ref.watch(listArticlesProvider).length,
                      itemBuilder: (BuildContext context, int index) {
                        return GestureDetector(
                          onTap: () {
                            String name = ref.read(listArticlesProvider)[index];
                            context.push('/materials/$name');
                          },
                          child: ListTile(
                            title: Text(ref.read(listArticlesProvider)[index]),
                          ),
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
