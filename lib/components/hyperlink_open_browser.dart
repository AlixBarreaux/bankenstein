import "package:flutter/material.dart";
import "package:url_launcher/url_launcher.dart";

class HyperlinkOpenBrowser extends StatelessWidget {
  final String text;
  final String uri;

  const HyperlinkOpenBrowser(
      {super.key, required this.text, required this.uri});

  @override
  Widget build(BuildContext context) {
    final Uri parsedUri = Uri.parse(uri);

    Future<void> _launchUrl() async {
      if (!await launchUrl(parsedUri)) {
        throw Exception("Could not launch $parsedUri");
      }
    }

    return InkWell(
      child: Text(
        text,
        style: const TextStyle(color: Colors.deepPurple),
      ),
      onTap: () => _launchUrl(),
    );
  }
}
