import 'package:flutter/material.dart';
import 'package:frontend/widgets/navigation/navbar.dart';

class HomePage extends StatelessWidget {
  const HomePage({
    super.key,
  });

  @override
  Widget build(context) {
    return Scaffold(
      body: NavBar(),
    );
  }
}
