import 'package:flutter/material.dart';
import 'package:frontend/router/router.dart';
import 'package:frontend/theme/theme.dart';
import 'package:frontend/utils/theme_util.dart';

void main() {
  runApp(
    const App(),
  );
}

class App extends StatelessWidget {
  const App({
    super.key,
  });

  @override
  Widget build(context) {
    final brightness = View.of(context).platformDispatcher.platformBrightness;
    TextTheme textTheme =
        createTextTheme(context, "Noto Serif Georgian", "Prata");
    MaterialTheme theme = MaterialTheme(textTheme);

    return MaterialApp.router(
      title: 'Alicia.e',
      routerConfig: AppRouter.router,
      theme: brightness == Brightness.light ? theme.light() : theme.dark(),
    );
  }
}
