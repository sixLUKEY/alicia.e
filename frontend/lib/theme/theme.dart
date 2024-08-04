import "package:flutter/material.dart";

class MaterialTheme {
  final TextTheme textTheme;

  const MaterialTheme(this.textTheme);

  static ColorScheme lightScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(0xff814d78),
      surfaceTint: Color(0xff814d78),
      onPrimary: Color(0xffffffff),
      primaryContainer: Color(0xffffd7f3),
      onPrimaryContainer: Color(0xff340831),
      secondary: Color(0xff6e5868),
      onSecondary: Color(0xffffffff),
      secondaryContainer: Color(0xfff8daee),
      onSecondaryContainer: Color(0xff271624),
      tertiary: Color(0xff815344),
      onTertiary: Color(0xffffffff),
      tertiaryContainer: Color(0xffffdbd0),
      onTertiaryContainer: Color(0xff321207),
      error: Color(0xffba1a1a),
      onError: Color(0xffffffff),
      errorContainer: Color(0xffffdad6),
      onErrorContainer: Color(0xff410002),
      surface: Color(0xfffff7f9),
      onSurface: Color(0xff201a1e),
      onSurfaceVariant: Color(0xff4e444b),
      outline: Color(0xff80747b),
      outlineVariant: Color(0xffd1c2cb),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xff352e33),
      inversePrimary: Color(0xfff2b3e4),
      primaryFixed: Color(0xffffd7f3),
      onPrimaryFixed: Color(0xff340831),
      primaryFixedDim: Color(0xfff2b3e4),
      onPrimaryFixedVariant: Color(0xff66355f),
      secondaryFixed: Color(0xfff8daee),
      onSecondaryFixed: Color(0xff271624),
      secondaryFixedDim: Color(0xffdbbed2),
      onSecondaryFixedVariant: Color(0xff554050),
      tertiaryFixed: Color(0xffffdbd0),
      onTertiaryFixed: Color(0xff321207),
      tertiaryFixedDim: Color(0xfff5b8a6),
      onTertiaryFixedVariant: Color(0xff663c2e),
      surfaceDim: Color(0xffe3d7dd),
      surfaceBright: Color(0xfffff7f9),
      surfaceContainerLowest: Color(0xffffffff),
      surfaceContainerLow: Color(0xfffdf0f6),
      surfaceContainer: Color(0xfff7eaf1),
      surfaceContainerHigh: Color(0xfff2e5eb),
      surfaceContainerHighest: Color(0xffecdfe5),
    );
  }

  ThemeData light() {
    return theme(lightScheme());
  }

  static ColorScheme lightMediumContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(0xff62315b),
      surfaceTint: Color(0xff814d78),
      onPrimary: Color(0xffffffff),
      primaryContainer: Color(0xff99628f),
      onPrimaryContainer: Color(0xffffffff),
      secondary: Color(0xff513d4c),
      onSecondary: Color(0xffffffff),
      secondaryContainer: Color(0xff856e7f),
      onSecondaryContainer: Color(0xffffffff),
      tertiary: Color(0xff62382a),
      onTertiary: Color(0xffffffff),
      tertiaryContainer: Color(0xff9b6858),
      onTertiaryContainer: Color(0xffffffff),
      error: Color(0xff8c0009),
      onError: Color(0xffffffff),
      errorContainer: Color(0xffda342e),
      onErrorContainer: Color(0xffffffff),
      surface: Color(0xfffff7f9),
      onSurface: Color(0xff201a1e),
      onSurfaceVariant: Color(0xff4a4047),
      outline: Color(0xff675c63),
      outlineVariant: Color(0xff84777f),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xff352e33),
      inversePrimary: Color(0xfff2b3e4),
      primaryFixed: Color(0xff99628f),
      onPrimaryFixed: Color(0xffffffff),
      primaryFixedDim: Color(0xff7e4a76),
      onPrimaryFixedVariant: Color(0xffffffff),
      secondaryFixed: Color(0xff856e7f),
      onSecondaryFixed: Color(0xffffffff),
      secondaryFixedDim: Color(0xff6b5566),
      onSecondaryFixedVariant: Color(0xffffffff),
      tertiaryFixed: Color(0xff9b6858),
      onTertiaryFixed: Color(0xffffffff),
      tertiaryFixedDim: Color(0xff7f5041),
      onTertiaryFixedVariant: Color(0xffffffff),
      surfaceDim: Color(0xffe3d7dd),
      surfaceBright: Color(0xfffff7f9),
      surfaceContainerLowest: Color(0xffffffff),
      surfaceContainerLow: Color(0xfffdf0f6),
      surfaceContainer: Color(0xfff7eaf1),
      surfaceContainerHigh: Color(0xfff2e5eb),
      surfaceContainerHighest: Color(0xffecdfe5),
    );
  }

  ThemeData lightMediumContrast() {
    return theme(lightMediumContrastScheme());
  }

  static ColorScheme lightHighContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(0xff3c1038),
      surfaceTint: Color(0xff814d78),
      onPrimary: Color(0xffffffff),
      primaryContainer: Color(0xff62315b),
      onPrimaryContainer: Color(0xffffffff),
      secondary: Color(0xff2e1d2b),
      onSecondary: Color(0xffffffff),
      secondaryContainer: Color(0xff513d4c),
      onSecondaryContainer: Color(0xffffffff),
      tertiary: Color(0xff3b180d),
      onTertiary: Color(0xffffffff),
      tertiaryContainer: Color(0xff62382a),
      onTertiaryContainer: Color(0xffffffff),
      error: Color(0xff4e0002),
      onError: Color(0xffffffff),
      errorContainer: Color(0xff8c0009),
      onErrorContainer: Color(0xffffffff),
      surface: Color(0xfffff7f9),
      onSurface: Color(0xff000000),
      onSurfaceVariant: Color(0xff2a2128),
      outline: Color(0xff4a4047),
      outlineVariant: Color(0xff4a4047),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xff352e33),
      inversePrimary: Color(0xffffe5f6),
      primaryFixed: Color(0xff62315b),
      onPrimaryFixed: Color(0xffffffff),
      primaryFixedDim: Color(0xff481b43),
      onPrimaryFixedVariant: Color(0xffffffff),
      secondaryFixed: Color(0xff513d4c),
      onSecondaryFixed: Color(0xffffffff),
      secondaryFixedDim: Color(0xff392735),
      onSecondaryFixedVariant: Color(0xffffffff),
      tertiaryFixed: Color(0xff62382a),
      onTertiaryFixed: Color(0xffffffff),
      tertiaryFixedDim: Color(0xff472216),
      onTertiaryFixedVariant: Color(0xffffffff),
      surfaceDim: Color(0xffe3d7dd),
      surfaceBright: Color(0xfffff7f9),
      surfaceContainerLowest: Color(0xffffffff),
      surfaceContainerLow: Color(0xfffdf0f6),
      surfaceContainer: Color(0xfff7eaf1),
      surfaceContainerHigh: Color(0xfff2e5eb),
      surfaceContainerHighest: Color(0xffecdfe5),
    );
  }

  ThemeData lightHighContrast() {
    return theme(lightHighContrastScheme());
  }

  static ColorScheme darkScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(0xfff2b3e4),
      surfaceTint: Color(0xfff2b3e4),
      onPrimary: Color(0xff4d1f47),
      primaryContainer: Color(0xff66355f),
      onPrimaryContainer: Color(0xffffd7f3),
      secondary: Color(0xffdbbed2),
      onSecondary: Color(0xff3d2a39),
      secondaryContainer: Color(0xff554050),
      onSecondaryContainer: Color(0xfff8daee),
      tertiary: Color(0xfff5b8a6),
      onTertiary: Color(0xff4c261a),
      tertiaryContainer: Color(0xff663c2e),
      onTertiaryContainer: Color(0xffffdbd0),
      error: Color(0xffffb4ab),
      onError: Color(0xff690005),
      errorContainer: Color(0xff93000a),
      onErrorContainer: Color(0xffffdad6),
      surface: Color(0xff171216),
      onSurface: Color(0xffecdfe5),
      onSurfaceVariant: Color(0xffd1c2cb),
      outline: Color(0xff9a8d95),
      outlineVariant: Color(0xff4e444b),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xffecdfe5),
      inversePrimary: Color(0xff814d78),
      primaryFixed: Color(0xffffd7f3),
      onPrimaryFixed: Color(0xff340831),
      primaryFixedDim: Color(0xfff2b3e4),
      onPrimaryFixedVariant: Color(0xff66355f),
      secondaryFixed: Color(0xfff8daee),
      onSecondaryFixed: Color(0xff271624),
      secondaryFixedDim: Color(0xffdbbed2),
      onSecondaryFixedVariant: Color(0xff554050),
      tertiaryFixed: Color(0xffffdbd0),
      onTertiaryFixed: Color(0xff321207),
      tertiaryFixedDim: Color(0xfff5b8a6),
      onTertiaryFixedVariant: Color(0xff663c2e),
      surfaceDim: Color(0xff171216),
      surfaceBright: Color(0xff3e373c),
      surfaceContainerLowest: Color(0xff120c11),
      surfaceContainerLow: Color(0xff201a1e),
      surfaceContainer: Color(0xff241e22),
      surfaceContainerHigh: Color(0xff2f282d),
      surfaceContainerHighest: Color(0xff3a3337),
    );
  }

  ThemeData dark() {
    return theme(darkScheme());
  }

  static ColorScheme darkMediumContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(0xfff7b7e9),
      surfaceTint: Color(0xfff2b3e4),
      onPrimary: Color(0xff2e032b),
      primaryContainer: Color(0xffb87ead),
      onPrimaryContainer: Color(0xff000000),
      secondary: Color(0xffdfc3d6),
      onSecondary: Color(0xff21111e),
      secondaryContainer: Color(0xffa3899b),
      onSecondaryContainer: Color(0xff000000),
      tertiary: Color(0xfffabdaa),
      onTertiary: Color(0xff2c0d04),
      tertiaryContainer: Color(0xffba8473),
      onTertiaryContainer: Color(0xff000000),
      error: Color(0xffffbab1),
      onError: Color(0xff370001),
      errorContainer: Color(0xffff5449),
      onErrorContainer: Color(0xff000000),
      surface: Color(0xff171216),
      onSurface: Color(0xfffff9fa),
      onSurfaceVariant: Color(0xffd6c7cf),
      outline: Color(0xffad9fa7),
      outlineVariant: Color(0xff8c8087),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xffecdfe5),
      inversePrimary: Color(0xff683660),
      primaryFixed: Color(0xffffd7f3),
      onPrimaryFixed: Color(0xff270025),
      primaryFixedDim: Color(0xfff2b3e4),
      onPrimaryFixedVariant: Color(0xff53254e),
      secondaryFixed: Color(0xfff8daee),
      onSecondaryFixed: Color(0xff1c0c19),
      secondaryFixedDim: Color(0xffdbbed2),
      onSecondaryFixedVariant: Color(0xff43303f),
      tertiaryFixed: Color(0xffffdbd0),
      onTertiaryFixed: Color(0xff250802),
      tertiaryFixedDim: Color(0xfff5b8a6),
      onTertiaryFixedVariant: Color(0xff532c1f),
      surfaceDim: Color(0xff171216),
      surfaceBright: Color(0xff3e373c),
      surfaceContainerLowest: Color(0xff120c11),
      surfaceContainerLow: Color(0xff201a1e),
      surfaceContainer: Color(0xff241e22),
      surfaceContainerHigh: Color(0xff2f282d),
      surfaceContainerHighest: Color(0xff3a3337),
    );
  }

  ThemeData darkMediumContrast() {
    return theme(darkMediumContrastScheme());
  }

  static ColorScheme darkHighContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(0xfffff9fa),
      surfaceTint: Color(0xfff2b3e4),
      onPrimary: Color(0xff000000),
      primaryContainer: Color(0xfff7b7e9),
      onPrimaryContainer: Color(0xff000000),
      secondary: Color(0xfffff9fa),
      onSecondary: Color(0xff000000),
      secondaryContainer: Color(0xffdfc3d6),
      onSecondaryContainer: Color(0xff000000),
      tertiary: Color(0xfffff9f8),
      onTertiary: Color(0xff000000),
      tertiaryContainer: Color(0xfffabdaa),
      onTertiaryContainer: Color(0xff000000),
      error: Color(0xfffff9f9),
      onError: Color(0xff000000),
      errorContainer: Color(0xffffbab1),
      onErrorContainer: Color(0xff000000),
      surface: Color(0xff171216),
      onSurface: Color(0xffffffff),
      onSurfaceVariant: Color(0xfffff9fa),
      outline: Color(0xffd6c7cf),
      outlineVariant: Color(0xffd6c7cf),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xffecdfe5),
      inversePrimary: Color(0xff451841),
      primaryFixed: Color(0xffffddf4),
      onPrimaryFixed: Color(0xff000000),
      primaryFixedDim: Color(0xfff7b7e9),
      onPrimaryFixedVariant: Color(0xff2e032b),
      secondaryFixed: Color(0xfffcdef2),
      onSecondaryFixed: Color(0xff000000),
      secondaryFixedDim: Color(0xffdfc3d6),
      onSecondaryFixedVariant: Color(0xff21111e),
      tertiaryFixed: Color(0xffffe0d7),
      onTertiaryFixed: Color(0xff000000),
      tertiaryFixedDim: Color(0xfffabdaa),
      onTertiaryFixedVariant: Color(0xff2c0d04),
      surfaceDim: Color(0xff171216),
      surfaceBright: Color(0xff3e373c),
      surfaceContainerLowest: Color(0xff120c11),
      surfaceContainerLow: Color(0xff201a1e),
      surfaceContainer: Color(0xff241e22),
      surfaceContainerHigh: Color(0xff2f282d),
      surfaceContainerHighest: Color(0xff3a3337),
    );
  }

  ThemeData darkHighContrast() {
    return theme(darkHighContrastScheme());
  }

  ThemeData theme(ColorScheme colorScheme) => ThemeData(
        useMaterial3: true,
        brightness: colorScheme.brightness,
        colorScheme: colorScheme,
        textTheme: textTheme.apply(
          bodyColor: colorScheme.onSurface,
          displayColor: colorScheme.onSurface,
        ),
        scaffoldBackgroundColor: colorScheme.surface,
        canvasColor: colorScheme.surface,
        appBarTheme: AppBarTheme(
          titleTextStyle: textTheme.headlineMedium,
          centerTitle: true,
        ),
      );

  List<ExtendedColor> get extendedColors => [];
}

class ExtendedColor {
  final Color seed, value;
  final ColorFamily light;
  final ColorFamily lightHighContrast;
  final ColorFamily lightMediumContrast;
  final ColorFamily dark;
  final ColorFamily darkHighContrast;
  final ColorFamily darkMediumContrast;

  const ExtendedColor({
    required this.seed,
    required this.value,
    required this.light,
    required this.lightHighContrast,
    required this.lightMediumContrast,
    required this.dark,
    required this.darkHighContrast,
    required this.darkMediumContrast,
  });
}

class ColorFamily {
  const ColorFamily({
    required this.color,
    required this.onColor,
    required this.colorContainer,
    required this.onColorContainer,
  });

  final Color color;
  final Color onColor;
  final Color colorContainer;
  final Color onColorContainer;
}
