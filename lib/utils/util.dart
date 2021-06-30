import 'package:mailto/mailto.dart';
import 'package:url_launcher/url_launcher.dart';

launchMailto() async {
  final mailtoLink = Mailto(
    to: ['lmk302@gmail.com'],
    cc: [],
    subject: 'mailto example subject',
    body: 'mailto example body',
  );
  // Convert the Mailto instance into a string.
  // Use either Dart's string interpolation
  // or the toString() method.
  await launch('$mailtoLink');
}
