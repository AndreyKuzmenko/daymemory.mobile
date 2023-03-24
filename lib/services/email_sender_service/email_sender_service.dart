import 'package:url_launcher/url_launcher.dart';

abstract class IEmailSenderService {
  Future sendEmail(String toEmail, String title, String body);
}

class EmailSenderService implements IEmailSenderService {
  @override
  Future sendEmail(String toEmail, String title, String body) async {
    final Uri emailLaunchUri = Uri(
      scheme: 'mailto',
      path: toEmail,
      query: encodeQueryParameters(<String, String>{'subject': title, 'body': body}),
    );
    launchUrl(emailLaunchUri);
  }

  String? encodeQueryParameters(Map<String, String> params) {
    return params.entries.map((MapEntry<String, String> e) => '${Uri.encodeComponent(e.key)}=${Uri.encodeComponent(e.value)}').join('&');
  }
}
