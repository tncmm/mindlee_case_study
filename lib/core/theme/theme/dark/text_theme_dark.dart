import 'package:flutter/material.dart';
import 'package:mindlee_case_study/core/theme/theme/color_scheme.dart';

import '../../app_theme.dart';

class TextThemeDark implements ITextTheme {
  TextThemeDark._init();
  static TextThemeDark? _instance;
  static TextThemeDark get instance {
    _instance ??= TextThemeDark._init();
    return _instance!;
  }

  @override
  TextStyle titleLarge = TextStyle(
    color: AppColorScheme.instance.lightGray,
  );

  @override
  TextStyle titleMedium = TextStyle(
    color: AppColorScheme.instance.lightGray,
  );

  @override
  TextStyle titleSmall = TextStyle(
    color: AppColorScheme.instance.lightGray,
  );

  @override
  TextStyle bodyLarge = TextStyle(
    color: AppColorScheme.instance.lightGray,
  );

  @override
  TextStyle bodyMedium = TextStyle(
    color: AppColorScheme.instance.lightGray,
  );
  @override
  TextStyle bodySmall = TextStyle(
    color: AppColorScheme.instance.lightGray,
  );
  @override
  TextStyle labelLarge = TextStyle(
    color: AppColorScheme.instance.lightGray,
  );
  @override
  TextStyle labelMedium = TextStyle(
    color: AppColorScheme.instance.lightGray,
  );
  @override
  TextStyle labelSmall = TextStyle(
    color: AppColorScheme.instance.lightGray,
  );
  @override
  TextTheme get theme => TextTheme(
        bodyLarge: bodyLarge,
        bodyMedium: bodyMedium,
        bodySmall: bodySmall,
        titleLarge: titleLarge,
        titleMedium: titleMedium,
        titleSmall: titleSmall,
        labelLarge: labelLarge,
        labelMedium: labelMedium,
        labelSmall: labelSmall,
      );
}
