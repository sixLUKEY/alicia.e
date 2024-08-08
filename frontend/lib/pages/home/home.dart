import 'package:flutter/material.dart';
import 'package:frontend/router/router.dart';
import 'package:go_router/go_router.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePage();
}

class _HomePage extends State<HomePage> {
  @override
  Widget build(context) {
    return DecoratedBox(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/images/background.jpg"),
          fit: BoxFit.cover,
          opacity: 0.08,
        ),
      ),
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: 320,
              child: Text(
                'Elegance and Grace for every occasion',
                style: Theme.of(context).textTheme.headlineLarge,
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(
              height: 24,
            ),
            SizedBox(
              width: 400,
              child: Text(
                'From timeless classics to modern designs, each dress is crafted with meticulous attention to detail, ensuring you look and feel your absolute best.',
                style: const TextStyle().copyWith(
                  color: Theme.of(context).colorScheme.onSurfaceVariant,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(
              height: 24,
            ),
            SizedBox(
              width: 300,
              child: Row(
                children: [
                  ElevatedButton(
                    onPressed: () {
                      _showAlert();
                    },
                    child: const Text(
                      'Book a Slot',
                    ),
                  ),
                  const Spacer(),
                  ElevatedButton(
                    onPressed: () {
                      context.go(Routes.catalogRoute);
                    },
                    child: const Text(
                      'Browse Catalog',
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  void _showAlert() {
    showDialog(
      context: context,
      builder: (ctx) => AlertDialog(
        title: const Text('Coming soon'),
        content: const Text('This Functionality is under Construction.'),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.pop(ctx);
            },
            child: const Text('Close'),
          ),
        ],
      ),
    );
  }
}
