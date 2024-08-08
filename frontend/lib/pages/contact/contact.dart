import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactPage extends StatelessWidget {
  const ContactPage({
    super.key,
  });

  @override
  Widget build(context) {
    return Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Contact Us',
            style: Theme.of(context).textTheme.headlineLarge,
          ),
          const SizedBox(
            height: 16,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () async {
                  var uri = Uri.parse(
                      'https://www.facebook.com/share/8q4HtC2QMvHAoTUy/?mibextid=qi2Omg');
                  if (await canLaunchUrl(uri)) {
                    await launchUrl(uri);
                  } else {
                    throw "Could not launch at this moment.";
                  }
                },
                child: const Text(
                  'Facebook',
                ),
              ),
              const SizedBox(
                width: 16,
              ),
              ElevatedButton(
                onPressed: () async {
                  var uri = Uri.parse(
                      'https://www.instagram.com/alicia.e_couture?igsh=N2kyaHB1eXdkN20x');
                  if (await canLaunchUrl(uri)) {
                    await launchUrl(uri);
                  } else {
                    throw "Could not launch at this moment.";
                  }
                },
                child: const Text(
                  'Instagram',
                ),
              )
            ],
          ),
          const SizedBox(
            height: 32,
          ),
          Text(
            'OR',
            style: Theme.of(context).textTheme.titleMedium,
          ),
          const SizedBox(
            height: 32,
          ),
          Text(
            'Find Us',
            style: Theme.of(context).textTheme.headlineLarge,
          ),
          const SizedBox(
            height: 16,
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.location_pin),
              SizedBox(
                width: 8,
              ),
              Text('Atlantis, Cape Town'),
            ],
          )
        ],
      ),
    );
  }
}
