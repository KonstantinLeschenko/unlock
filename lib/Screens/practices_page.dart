import 'package:flutter/material.dart';
import 'package:unlock/data/my_api.dart';
import 'package:unlock/generated/l10n.dart';

import '../theme/theme_constants.dart';

class PracticesPage extends StatelessWidget {
  const PracticesPage({super.key});

  @override
  Widget build(BuildContext context) {
    List<Category> categories = MyAPI().myCategories;

    return Scaffold(
      appBar: AppBar(
        title: Text(S.of(context).practices),
      ),
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
                  padding: const EdgeInsets.all(15.0),
                  child: ListView.builder(
                      itemCount: categories.length,
                      itemBuilder: (BuildContext context, int index) {
                        return ListTile(
                          title: Text(categories[index].categoryName),
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
