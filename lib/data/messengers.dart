import 'package:url_launcher/url_launcher.dart';

Future<void> joinTelegram() async {
  const String url = "https://t.me/konstantinleschenko";
  await launchUrl(Uri.parse(url));
}

Future<void> joinGmail() async {
  final Uri params = Uri(
    scheme: 'mailto',
    path: 'mypost.kh@gmail.com',
    query: 'subject=App Feedback&body=',
  );
  var url = params.toString();
  await launchUrl(Uri.parse(url));
}

Future<void> joinInstagram() async {
  const String url = "https://www.instagram.com/konstantin_leschenko";
  await launchUrl(Uri.parse(url));
}
