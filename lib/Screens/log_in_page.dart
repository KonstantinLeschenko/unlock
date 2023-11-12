import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:unlock/generated/l10n.dart';
import '../theme/theme_constants.dart';

class LogInPage extends StatefulWidget {
  const LogInPage({super.key});

  @override
  State<LogInPage> createState() => _LogInPageState();
}

class _LogInPageState extends State<LogInPage> {
  final loginController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  void dispose() {
    loginController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Stack(
        children: [
          SizedBox(
            width: MediaQuery.sizeOf(context).width,
            height: MediaQuery.sizeOf(context).height,
            child: Image.asset(
                MediaQuery.of(context).platformBrightness == Brightness.dark
                    ? 'assets/splash_dark.png'
                    : 'assets/splash_light.png',
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
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                        children: [
                          TextField(
                            controller: loginController,
                            decoration: InputDecoration(
                                icon: const Icon(Icons.email),
                                hintText: S.of(context).hintLogIn),
                          ),
                          TextField(
                            controller: passwordController,
                            obscureText: true,
                            enableSuggestions: false,
                            autocorrect: false,
                            decoration: InputDecoration(
                              icon: const Icon(Icons.password),
                              hintText: S.of(context).hintPassword,
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              TextButton(
                                  // resert password later
                                  onPressed: () {},
                                  child: Text(S.of(context).forgotPassword)),
                            ],
                          ),
                          Row(
                            children: [
                              Expanded(
                                child: Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(50, 0, 50, 0),
                                  child: ElevatedButton(
                                    onPressed: () {
                                      if ((loginController.text != '') &&
                                          (passwordController.text != '')) {
                                        context.go('/home');
                                      }
                                    },
                                    child: Text(S.of(context).logIn),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Text(S.of(context).doNotHaveAccount),
                          TextButton(
                              onPressed: () => context.go('/registration'),
                              child: Text(S.of(context).register)),
                        ],
                      )
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
