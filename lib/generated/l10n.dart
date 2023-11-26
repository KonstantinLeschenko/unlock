// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(_current != null,
        'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(instance != null,
        'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?');
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `Your card of a day`
  String get yourCardOfADay {
    return Intl.message(
      'Your card of a day',
      name: 'yourCardOfADay',
      desc: '',
      args: [],
    );
  }

  /// `Learn more about card of a day`
  String get aboutCardOfADay {
    return Intl.message(
      'Learn more about card of a day',
      name: 'aboutCardOfADay',
      desc: '',
      args: [],
    );
  }

  /// `The card of the day is a hint from MAC that will help you get answers to questions (from personal to financial), find a solution to your problem, and look at a familiar situation from a new perspective. What do we have to do? Formulate your request. The questions can be completely different, depending on what topic you want to explore: 'What direction should I move today/this week?', 'What is stopping me?', 'What is the first step I can take?', 'What?' I’m not happy with what I’m doing, what can I improve, perfect?' The answers can come immediately, at the first glance at the picture. It happens that the association does not arise, and more time is needed to 'stay' with the card. In this case, you can help yourself with additional questions: 'What on the card most attracted my attention?', 'What feelings and emotions does this card evoke in me?', 'How does the character/characters in the picture feel?', 'What will he/they do next?', 'What is happening on the map?', 'What happened up to this moment?', 'What will happen now?', 'Is it me on the map or am I looking at this map?', 'Which of this do I not want to see? Why?', 'How can this card be associated with the answer to my question?', 'How does this image on the map, these associations resonate with my life?', 'Imagine that this is not the whole picture, but part of it. What do you think will be outside the frame, what is the continuation of this picture?'`
  String get aboutCardOfADayText {
    return Intl.message(
      'The card of the day is a hint from MAC that will help you get answers to questions (from personal to financial), find a solution to your problem, and look at a familiar situation from a new perspective. What do we have to do? Formulate your request. The questions can be completely different, depending on what topic you want to explore: \'What direction should I move today/this week?\', \'What is stopping me?\', \'What is the first step I can take?\', \'What?\' I’m not happy with what I’m doing, what can I improve, perfect?\' The answers can come immediately, at the first glance at the picture. It happens that the association does not arise, and more time is needed to \'stay\' with the card. In this case, you can help yourself with additional questions: \'What on the card most attracted my attention?\', \'What feelings and emotions does this card evoke in me?\', \'How does the character/characters in the picture feel?\', \'What will he/they do next?\', \'What is happening on the map?\', \'What happened up to this moment?\', \'What will happen now?\', \'Is it me on the map or am I looking at this map?\', \'Which of this do I not want to see? Why?\', \'How can this card be associated with the answer to my question?\', \'How does this image on the map, these associations resonate with my life?\', \'Imagine that this is not the whole picture, but part of it. What do you think will be outside the frame, what is the continuation of this picture?\'',
      name: 'aboutCardOfADayText',
      desc: '',
      args: [],
    );
  }

  /// `learning`
  String get learning {
    return Intl.message(
      'learning',
      name: 'learning',
      desc: '',
      args: [],
    );
  }

  /// `Practices`
  String get practices {
    return Intl.message(
      'Practices',
      name: 'practices',
      desc: '',
      args: [],
    );
  }

  /// `About this App`
  String get aboutThisApp {
    return Intl.message(
      'About this App',
      name: 'aboutThisApp',
      desc: '',
      args: [],
    );
  }

  /// `Personal account`
  String get userPageTitle {
    return Intl.message(
      'Personal account',
      name: 'userPageTitle',
      desc: '',
      args: [],
    );
  }

  /// `Notifications`
  String get notificationsPageTitle {
    return Intl.message(
      'Notifications',
      name: 'notificationsPageTitle',
      desc: '',
      args: [],
    );
  }

  /// `Sign up for a consultation`
  String get consultationPageTitle {
    return Intl.message(
      'Sign up for a consultation',
      name: 'consultationPageTitle',
      desc: '',
      args: [],
    );
  }

  /// `Feedback`
  String get feedBackPageTitle {
    return Intl.message(
      'Feedback',
      name: 'feedBackPageTitle',
      desc: '',
      args: [],
    );
  }

  /// `Theme of the messege`
  String get themeOfTheMessege {
    return Intl.message(
      'Theme of the messege',
      name: 'themeOfTheMessege',
      desc: '',
      args: [],
    );
  }

  /// `Your messege`
  String get yourMessege {
    return Intl.message(
      'Your messege',
      name: 'yourMessege',
      desc: '',
      args: [],
    );
  }

  /// `Send`
  String get send {
    return Intl.message(
      'Send',
      name: 'send',
      desc: '',
      args: [],
    );
  }

  /// `My profile`
  String get myProfile {
    return Intl.message(
      'My profile',
      name: 'myProfile',
      desc: '',
      args: [],
    );
  }

  /// `Personal data`
  String get personalData {
    return Intl.message(
      'Personal data',
      name: 'personalData',
      desc: '',
      args: [],
    );
  }

  /// `Last name`
  String get lastName {
    return Intl.message(
      'Last name',
      name: 'lastName',
      desc: '',
      args: [],
    );
  }

  /// `First Name`
  String get firstName {
    return Intl.message(
      'First Name',
      name: 'firstName',
      desc: '',
      args: [],
    );
  }

  /// `Patronimic`
  String get patronymic {
    return Intl.message(
      'Patronimic',
      name: 'patronymic',
      desc: '',
      args: [],
    );
  }

  /// `Birth Day`
  String get birthDay {
    return Intl.message(
      'Birth Day',
      name: 'birthDay',
      desc: '',
      args: [],
    );
  }

  /// `Contacts`
  String get contacts {
    return Intl.message(
      'Contacts',
      name: 'contacts',
      desc: '',
      args: [],
    );
  }

  /// `Email`
  String get email {
    return Intl.message(
      'Email',
      name: 'email',
      desc: '',
      args: [],
    );
  }

  /// `Phone number`
  String get phoneNumber {
    return Intl.message(
      'Phone number',
      name: 'phoneNumber',
      desc: '',
      args: [],
    );
  }

  /// `Language`
  String get languahe {
    return Intl.message(
      'Language',
      name: 'languahe',
      desc: '',
      args: [],
    );
  }

  /// `Save changes`
  String get saveChanges {
    return Intl.message(
      'Save changes',
      name: 'saveChanges',
      desc: '',
      args: [],
    );
  }

  /// `Log out`
  String get logOut {
    return Intl.message(
      'Log out',
      name: 'logOut',
      desc: '',
      args: [],
    );
  }

  /// `Registration`
  String get registrationPageTitle {
    return Intl.message(
      'Registration',
      name: 'registrationPageTitle',
      desc: '',
      args: [],
    );
  }

  /// `Your email`
  String get hintLogIn {
    return Intl.message(
      'Your email',
      name: 'hintLogIn',
      desc: '',
      args: [],
    );
  }

  /// `Your password`
  String get hintPassword {
    return Intl.message(
      'Your password',
      name: 'hintPassword',
      desc: '',
      args: [],
    );
  }

  /// `Register an account`
  String get register {
    return Intl.message(
      'Register an account',
      name: 'register',
      desc: '',
      args: [],
    );
  }

  /// `Forgot your password ?`
  String get forgotPassword {
    return Intl.message(
      'Forgot your password ?',
      name: 'forgotPassword',
      desc: '',
      args: [],
    );
  }

  /// `Log In`
  String get logIn {
    return Intl.message(
      'Log In',
      name: 'logIn',
      desc: '',
      args: [],
    );
  }

  /// `Do not have accont yet ?`
  String get doNotHaveAccount {
    return Intl.message(
      'Do not have accont yet ?',
      name: 'doNotHaveAccount',
      desc: '',
      args: [],
    );
  }

  /// `Crisis situations`
  String get catCrisisSituations {
    return Intl.message(
      'Crisis situations',
      name: 'catCrisisSituations',
      desc: '',
      args: [],
    );
  }

  /// `Motherhood`
  String get catMotherhood {
    return Intl.message(
      'Motherhood',
      name: 'catMotherhood',
      desc: '',
      args: [],
    );
  }

  /// `Relationships with people`
  String get catRelationhipsWithPeople {
    return Intl.message(
      'Relationships with people',
      name: 'catRelationhipsWithPeople',
      desc: '',
      args: [],
    );
  }

  /// `Finding support`
  String get catFindingSupport {
    return Intl.message(
      'Finding support',
      name: 'catFindingSupport',
      desc: '',
      args: [],
    );
  }

  /// `Search for a resource`
  String get catSearchForAResource {
    return Intl.message(
      'Search for a resource',
      name: 'catSearchForAResource',
      desc: '',
      args: [],
    );
  }

  /// `Building your own boundaries`
  String get catBuildingYourOwnBoundaries {
    return Intl.message(
      'Building your own boundaries',
      name: 'catBuildingYourOwnBoundaries',
      desc: '',
      args: [],
    );
  }

  /// `Overcoming fears`
  String get catOvercomingFears {
    return Intl.message(
      'Overcoming fears',
      name: 'catOvercomingFears',
      desc: '',
      args: [],
    );
  }

  /// `Priorities`
  String get catPriorities {
    return Intl.message(
      'Priorities',
      name: 'catPriorities',
      desc: '',
      args: [],
    );
  }

  /// `Psychosomatics`
  String get catPsychosomatics {
    return Intl.message(
      'Psychosomatics',
      name: 'catPsychosomatics',
      desc: '',
      args: [],
    );
  }

  /// `Self-esteem and self-worth`
  String get catSelfEsteemAndSelfWorth {
    return Intl.message(
      'Self-esteem and self-worth',
      name: 'catSelfEsteemAndSelfWorth',
      desc: '',
      args: [],
    );
  }

  /// `Self-sabotage`
  String get catSelfSabotage {
    return Intl.message(
      'Self-sabotage',
      name: 'catSelfSabotage',
      desc: '',
      args: [],
    );
  }

  /// `Confidence`
  String get catConfidence {
    return Intl.message(
      'Confidence',
      name: 'catConfidence',
      desc: '',
      args: [],
    );
  }

  /// `MAC - what is it and what is it for?`
  String get artWhatIsMac {
    return Intl.message(
      'MAC - what is it and what is it for?',
      name: 'artWhatIsMac',
      desc: '',
      args: [],
    );
  }

  /// `Types of MAC decks`
  String get artTypesOfMACDecks {
    return Intl.message(
      'Types of MAC decks',
      name: 'artTypesOfMACDecks',
      desc: '',
      args: [],
    );
  }

  /// `Principles of working with MAC`
  String get artPryncyplesOfWorking {
    return Intl.message(
      'Principles of working with MAC',
      name: 'artPryncyplesOfWorking',
      desc: '',
      args: [],
    );
  }

  /// `Strategies for working with MAC`
  String get artStrategiesForWorking {
    return Intl.message(
      'Strategies for working with MAC',
      name: 'artStrategiesForWorking',
      desc: '',
      args: [],
    );
  }

  /// `Methods of application`
  String get artMethodsOfApplication {
    return Intl.message(
      'Methods of application',
      name: 'artMethodsOfApplication',
      desc: '',
      args: [],
    );
  }

  /// `MAC - diagnostics`
  String get artMACDiagnostics {
    return Intl.message(
      'MAC - diagnostics',
      name: 'artMACDiagnostics',
      desc: '',
      args: [],
    );
  }

  /// `MAC - as an auxiliary tool`
  String get artAuxiliaryTool {
    return Intl.message(
      'MAC - as an auxiliary tool',
      name: 'artAuxiliaryTool',
      desc: '',
      args: [],
    );
  }

  /// `MAC - as a full-fledged working tool`
  String get artWorkingTool {
    return Intl.message(
      'MAC - as a full-fledged working tool',
      name: 'artWorkingTool',
      desc: '',
      args: [],
    );
  }

  /// `Scheme of a psychocorrection session`
  String get artSchemeOfPsychocorrectionSession {
    return Intl.message(
      'Scheme of a psychocorrection session',
      name: 'artSchemeOfPsychocorrectionSession',
      desc: '',
      args: [],
    );
  }

  /// `MAC - fixation`
  String get artFixation {
    return Intl.message(
      'MAC - fixation',
      name: 'artFixation',
      desc: '',
      args: [],
    );
  }

  /// `Request options`
  String get artRequestOptions {
    return Intl.message(
      'Request options',
      name: 'artRequestOptions',
      desc: '',
      args: [],
    );
  }

  /// `Session end options`
  String get artSessionEndOptions {
    return Intl.message(
      'Session end options',
      name: 'artSessionEndOptions',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'ru'),
      Locale.fromSubtags(languageCode: 'uk'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
