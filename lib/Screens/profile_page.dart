import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  final firstNameControleer = TextEditingController();
  final lastNameControlleer = TextEditingController();
  final patronimicController = TextEditingController();
  final birthdayController = TextEditingController();
  final emailController = TextEditingController();
  final phoneNumberController = TextEditingController();

  @override
  void dispose() {
    firstNameControleer.dispose();
    lastNameControlleer.dispose();
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
        title: const Text('My Profile'),
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
                            const Text('Personal Data'),
                            TextField(
                              controller: lastNameControlleer,
                              decoration: const InputDecoration(hintText: 'Last Name'),
                            ),
                            TextField(
                              controller: firstNameControleer,
                              decoration: const InputDecoration(hintText: 'First Name'),
                            ),
                            TextField(
                              controller: patronimicController,
                              decoration: const InputDecoration(hintText: 'Patronimic'),
                            ),
                            TextField(
                              controller: birthdayController,
                              decoration: const InputDecoration(hintText: 'Birth Day'),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(20),
                        child: Column(
                          children: [
                            const Text('Contacts'),
                            TextField(
                              controller: emailController,
                              decoration: const InputDecoration(hintText: 'Email'),
                            ),
                            TextField(
                              controller: phoneNumberController,
                              decoration:
                                  const InputDecoration(hintText: 'Phone Number'),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(20),
                        child: Column(
                          children: [
                            const Text('Language'),
                            RadioListTile(
                                value: 0,
                                groupValue: 0,
                                title: const Text('English'),
                                onChanged: (value) {}),
                            RadioListTile(
                                value: 1,
                                groupValue: 0,
                                title: const Text('Ukrainian'),
                                onChanged: (value) {}),
                            RadioListTile(
                                value: 2,
                                groupValue: 0,
                                title: const Text('Russian'),
                                onChanged: (value) {}),
                          ],
                        ),
                      ),
                      Row(
                        children: [
                          Expanded(child: Padding(
                            padding: const EdgeInsets.fromLTRB(50, 0, 50, 0),
                            child: ElevatedButton(onPressed: () {}, child: const Text('Save Changes'),),
                          )),
                        ],
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.fromLTRB(50, 0, 50, 0),
                              child: ElevatedButton(onPressed: () {}, child: const Text('Log Out'),),
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
