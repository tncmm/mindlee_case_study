import 'package:flutter/material.dart';

import '../../app_theme.dart';

class TextThemeLight implements ITextTheme {
  TextThemeLight._init();
  static TextThemeLight? _instance;
  static TextThemeLight get instance {
    _instance ??= TextThemeLight._init();
    return _instance!;
  }

  @override
  TextStyle titleLarge = const TextStyle(
    color: Colors.black,
  );
  @override
  TextStyle titleMedium = const TextStyle(
    color: Colors.black,
  );
  @override
  TextStyle titleSmall = const TextStyle(
    color: Colors.black,
  );
  @override
  TextStyle bodyLarge = const TextStyle(
    color: Colors.black,
  );
  @override
  TextStyle bodyMedium = const TextStyle(
    color: Colors.black,
  );
  @override
  TextStyle bodySmall = const TextStyle(
    color: Colors.black,
  );
  @override
  TextStyle labelLarge = const TextStyle(
    color: Colors.black,
  );
  @override
  TextStyle labelMedium = const TextStyle(
    color: Colors.black,
  );
  @override
  TextStyle labelSmall = const TextStyle(
    color: Colors.black,
  );
  @override
  TextTheme get theme => TextTheme(
        titleLarge: titleLarge,
        titleMedium: titleMedium,
        titleSmall: titleSmall,
        bodyLarge: bodyLarge,
        bodyMedium: bodyMedium,
        labelLarge: labelLarge,
        labelMedium: labelMedium,
        labelSmall: labelSmall,
      );
}
