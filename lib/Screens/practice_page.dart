import 'package:flutter/material.dart';
import 'package:unlock/Data/constants.dart';
import 'package:unlock/Widgets/my_app_bar.dart';
import 'package:unlock/Widgets/my_categories_item.dart';

class PracticePage extends StatelessWidget {
  const PracticePage({super.key});

  @override
  Widget build(BuildContext context) {
    var myScreen = MediaQuery.sizeOf(context);
    List myListCategories = Constants().practicesCategories;

    return Scaffold(
      body: Stack(
        children: [
          SizedBox(
            width: myScreen.width,
            height: myScreen.height,
            child: Image.asset('assets/bg_practice.png', fit: BoxFit.fill),
          ),
          Column(
            children: [
              MyAppBar(title: 'Practices (Categories)'),
              const SizedBox(
                height: 5,
              ),
              Expanded(
                  child: ListView.builder(
                      itemCount: myListCategories.length,
                      itemBuilder: (BuildContext context, int index) {
                        return GestureDetector(
                          onTap: () => showDialog<String>(
                              context: context,
                              builder: (BuildContext context) => AlertDialog(
                                    title: const Text('Your choice is'),
                                    content: Text(myListCategories[index]),
                                    backgroundColor: Colors.yellow[200],
                                    actions: [
                                      TextButton(
                                        onPressed: () =>
                                            Navigator.pop(context, 'OK'),
                                        child: const Text('OK'),
                                      ),
                                    ],
                                  )),
                          child:
                              MyCategoriesItem(title: myListCategories[index]),
                        );
                      }))
            ],
          )
        ],
      ),
    );
  }
}
