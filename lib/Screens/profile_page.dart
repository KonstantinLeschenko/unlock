import 'package:flutter/material.dart';
import 'package:unlock/generated/l10n.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  final firstNameController = TextEditingController();
  final lastNameController = TextEditingController();
  final patronimicController = TextEditingController();
  final birthdayController = TextEditingController();
  final emailController = TextEditingController();
  final phoneNumberController = TextEditingController();

  @override
  void dispose() {
    firstNameController.dispose();
    lastNameController.dispose();
    patronimicController.dispose();
    birthdayController.dispose();
    emailController.dispose();
    phoneNumberController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(S.of(context).myProfile),
      ),
      body: Stack(
        children: [
          SizedBox(
            width: MediaQuery.sizeOf(context).width,
            height: MediaQuery.sizeOf(context).height,
            child: Image.asset(
                MediaQuery.of(context).platformBrightness == Brightness.dark
                    ? 'assets/bg_profile_dark.png'
                    : 'assets/bg_profile_light.png',
                fit: BoxFit.fill),
          ),
          Opacity(
            opacity: 0.8,
            child: Center(
              child: Padding(
                padding: const EdgeInsets.all(30),
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
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(20),
                        child: Column(
                          children: [
                            Text(S.of(context).personalData),
                            TextField(
                              controller: lastNameController,
                              decoration: InputDecoration(hintText: S.of(context).lastName),
                            ),
                            TextField(
                              controller: firstNameController,
                              decoration: InputDecoration(hintText: S.of(context).firstName),
                            ),
                            TextField(
                              controller: patronimicController,
                              decoration: InputDecoration(hintText: S.of(context).patronmic),
                            ),
                            TextField(
                              controller: birthdayController,
                              decoration: InputDecoration(hintText: S.of(context).birthDay),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(20),
                        child: Column(
                          children: [
                           Text(S.of(context).contacts),
                            TextField(
                              controller: emailController,
                              decoration: InputDecoration(hintText: S.of(context).email),
                            ),
                            TextField(
                              controller: phoneNumberController,
                              decoration:
                                 InputDecoration(hintText: S.of(context).phoneNumber),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(20),
                        child: Column(
                          children: [
                            Text(S.of(context).languahe),
                            RadioListTile(
                                value: 0,
                                groupValue: 0,
                                title: const Text('English'),
                                onChanged: (value) {}),
                            RadioListTile(
                                value: 1,
                                groupValue: 0,
                                title: const Text('Українська'),
                                onChanged: (value) {}),
                            RadioListTile(
                                value: 2,
                                groupValue: 0,
                                title: const Text('Русский'),
                                onChanged: (value) {}),
                          ],
                        ),
                      ),
                      Row(
                        children: [
                          Expanded(child: Padding(
                            padding: const EdgeInsets.fromLTRB(50, 0, 50, 0),
                            child: ElevatedButton(onPressed: () {}, child: Text(S.of(context).saveChanges),),
                          )),
                        ],
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.fromLTRB(50, 0, 50, 0),
                              child: ElevatedButton(onPressed: () {}, child: Text(S.of(context).logOut),),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 20,)
                    ],
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
