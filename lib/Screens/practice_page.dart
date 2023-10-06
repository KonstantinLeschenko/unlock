import 'package:flutter/material.dart';
import 'package:unlock/Data/constance.dart';
import 'package:unlock/Widgets/my_app_bar.dart';
import 'package:unlock/Widgets/my_categories_item.dart';

class PracticePage extends StatelessWidget {
  const PracticePage({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.sizeOf(context).width;
    double screenHeight = MediaQuery.sizeOf(context).height;

    

    return Scaffold(
      body: Stack(
        children: [
          SizedBox(
            width: screenWidth,
            height: screenHeight,
            child: Image.asset('assets/bg_practice.png', fit: BoxFit.fill),
          ),
          Column(
            children: [
              MyAppBar(title: 'Practices (Categories)'),
              const SizedBox(height: 5,),
              Expanded(
                  child: ListView.builder(
                      itemCount: Constance().practiesCategories.length,
                      itemBuilder: (BuildContext context, int index) {
                        return GestureDetector(
                          onTap: () => showDialog<String>(
                      context: context,
                      builder: (BuildContext context) => AlertDialog(
                            title: const Text('Your choice is'),
                            content: Text(Constance().practiesCategories[index]),
                            backgroundColor: Colors.yellow[200],
                            actions: [
                              TextButton(
                                onPressed: () => Navigator.pop(context, 'OK'),
                                child: const Text('OK'),
                              ),
                            ],
                          )),
                          child: MyCategoriesItem(
                              title: Constance().practiesCategories[index]),
                        );
                      }))
            ],
          )
        ],
      ),
    );
  }
  
  
}
