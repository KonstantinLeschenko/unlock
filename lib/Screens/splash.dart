import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
//import 'package:unlock/Screens/home_page.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    _navigateHome();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Image.asset(
            MediaQuery.of(context).platformBrightness == Brightness.dark
                ? 'assets/splash_dark.png'
                : 'assets/splash_light.png',
            fit: BoxFit.fill),
      ),
    ));
  }

  void _navigateHome() async {
    await Future.delayed(const Duration(seconds: 2), () {});
    // ignore: use_build_context_synchronously
    // Navigator.pushReplacement(
    //     context, MaterialPageRoute(builder: (context) => const HomePage()));
    // ignore: use_build_context_synchronously
    context.go('/home');
  }
}
