import 'package:dynamic_color/dynamic_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:material_you/alias.dart';
import 'package:material_you/theme/app_theme_data.dart';
import 'package:material_you/theme/color/app_color_scheme.dart';
import 'package:material_you/theme/color/app_colors.dart';
import 'package:material_you/theme/shape/app_shape_scheme.dart';
import 'package:material_you/theme/text/app_typography.dart';
import 'package:material_you/ext/core_palette_ext.dart';

abstract class AppThemeFactory {
  AppThemeFactory._();

  static Future<AppThemeData> create({
    required bool isDark,
  }) async {
    final brightness = isDark ? Brightness.dark : Brightness.light;

    final dynamicColorsScheme = await _getDynamicColors(brightness);
    final purpleColorScheme = ColorScheme.fromSeed(
      seedColor: AppColors.purple,
      brightness: brightness,
    );

    final appColorScheme = AppColorScheme.fromMaterialColorScheme(
      dynamicColorsScheme ?? purpleColorScheme,
      disabled: AppColors.grey,
      onDisabled: AppColors.black,
    );


    final appTypography = AppTypography();

    final textTheme = isDark ? appTypography.white : appTypography.black;

    const appShapeScheme = AppShapeScheme();

    final materialThemeData = MaterialThemeData(
      colorScheme: appColorScheme.materialColorScheme,
      brightness: appColorScheme.brightness,
      typography: appTypography.materialTypography,
    );

    return AppThemeData(
      colorScheme: appColorScheme,
      typography: appTypography,
      textTheme: textTheme,
      shapeScheme: appShapeScheme,
      materialThemeData: materialThemeData,
    );
  }


  static Future<ColorScheme?> _getDynamicColors(Brightness brightness) {
    try {
      return DynamicColorPlugin.getCorePalette().then((corePallet) =>
          corePallet?.toMaterialColorScheme(brightness: brightness));
    } on PlatformException {
      return Future.value(null);
    }
  }
}
