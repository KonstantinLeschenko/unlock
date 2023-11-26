import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:go_router/go_router.dart';
import 'package:unlock/Screens/about_page.dart';
import 'package:unlock/Screens/consultation_page.dart';
import 'package:unlock/Screens/error_screen.dart';
import 'package:unlock/Screens/feed_back_page.dart';
import 'package:unlock/Screens/home_page.dart';
import 'package:unlock/Screens/learning_page.dart';
import 'package:unlock/Screens/log_in_page.dart';
import 'package:unlock/Screens/materials.dart';
import 'package:unlock/Screens/practices_page.dart';
import 'package:unlock/Screens/registration_page.dart';
import 'package:unlock/Screens/splash.dart';
import 'package:flutter/services.dart';
import 'package:unlock/Screens/user_page.dart';
import 'package:unlock/data/locator.dart';
import 'package:unlock/firebase_options.dart';
import 'package:unlock/generated/l10n.dart';
import 'package:unlock/theme/theme_constants.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  // await FirebaseAppCheck.instance.activate(
  //   androidProvider: AndroidProvider.debug,
  //   appleProvider: AppleProvider.appAttest,
  //   webProvider: ReCaptchaV3Provider('recaptcha-v3-site-key')
  // );
  setupLocator();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);

    return MaterialApp.router(
      localizationsDelegates: const [
        S.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: S.delegate.supportedLocales,
      theme: lightTheme,
      darkTheme: darkTheme,
      debugShowCheckedModeBanner: false,
      //home: const Splash(),
      routerConfig: _router,
    );
  }

  final GoRouter _router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const Splash(),
      ),
      GoRoute(
        path: '/login',
        builder: (context, state) => const LogInPage(),
      ),
      GoRoute(
        path: '/registration',
        builder: (context, state) => const RegistrationPage(),
      ),
      GoRoute(
        path: '/home',
        builder: (context, state) => const HomePage(),
      ),
      GoRoute(
        path: '/about',
        builder: (context, state) => const AboutPage(),
      ),
      GoRoute(
        path: '/consultation',
        builder: (context, state) => const ConsultationPage(),
      ),
      GoRoute(
        path: '/feedback',
        builder: (context, state) => const FeedBackPage(),
      ),
      GoRoute(
        path: '/learning',
        builder: (context, state) => LearningPage(),
      ),
      GoRoute(
        path: '/practices',
        builder: (context, state) => const PracticesPage(),
      ),
      GoRoute(
        path: '/user',
        builder: (context, state) => const UserPage(),
      ),
      GoRoute(
        path: '/materials/:name',
        builder: (context, state) => MaterialsPage(
          name: state.pathParameters['name']!,
        ),
      ),
    ],
    errorBuilder: (context, state) => const ErrorScreen(),
  );
}
