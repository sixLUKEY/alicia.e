import 'package:flutter/material.dart';

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
            height: 8,
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.email),
              SizedBox(
                width: 8,
              ),
              Text('example@email.com'),
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
            height: 8,
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.location_pin),
              SizedBox(
                width: 8,
              ),
              Text('6 Suikerbekkie Atlantis'),
            ],
          )
        ],
      ),
    );
  }
}
