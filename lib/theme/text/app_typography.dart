import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:material_you/theme/color/app_colors.dart';
import 'package:material_you/theme/text/app_text_theme.dart';
import 'package:material_you/theme/text/font_family.dart';

@immutable
class AppTypography extends Equatable {
  const AppTypography._({
    required this.black,
    required this.white,
  });

  AppTypography()
      : this._(
          black: _createBlackTextTheme(),
          white: _createWhiteTextTheme(),
        );

  final AppTextTheme black;
  final AppTextTheme white;

  Typography get materialTypography => Typography.material2018(
        // Platform independent
        platform: null,
        black: black.materialTextTheme,
        white: white.materialTextTheme,
      );

  @override
  List<Object?> get props => [
        black,
        white,
      ];

  static AppTextTheme _createWhiteTextTheme() =>
      _createTextTheme(AppColors.white);

  static AppTextTheme _createBlackTextTheme() =>
      _createTextTheme(AppColors.black);

  /// Define app Text theme style
  static AppTextTheme _createTextTheme(Color color) => AppTextTheme(
        displayLarge: TextStyle(
          debugLabel: 'appTextTheme displayLarge',
          color: color,
          fontSize: 112.0,
          fontWeight: FontWeight.w400,
          fontFamily: FontFamily.sfUi,
          textBaseline: TextBaseline.alphabetic,
          letterSpacing: -1.5,
        ),
        displayMedium: TextStyle(
          debugLabel: 'appTextTheme displayMedium',
          color: color,
          fontSize: 56.0,
          fontWeight: FontWeight.w400,
          fontFamily: FontFamily.sfUi,
          textBaseline: TextBaseline.alphabetic,
          letterSpacing: -1.5,
        ),
        displaySmall: TextStyle(
          debugLabel: 'appTextTheme displaySmall',
          color: color,
          fontSize: 45.0,
          fontWeight: FontWeight.w400,
          fontFamily: FontFamily.sfUi,
          textBaseline: TextBaseline.alphabetic,
          letterSpacing: -1.5,
        ),
        headlineLarge: TextStyle(
          debugLabel: 'appTextTheme headlineLarge',
          color: color,
          fontSize: 40.0,
          fontWeight: FontWeight.w400,
          fontFamily: FontFamily.sfUi,
          textBaseline: TextBaseline.alphabetic,
          letterSpacing: -0.5,
        ),
        headlineMedium: TextStyle(
          debugLabel: 'appTextTheme headlineMedium',
          color: color,
          fontSize: 34.0,
          fontWeight: FontWeight.w400,
          fontFamily: FontFamily.sfUi,
          textBaseline: TextBaseline.alphabetic,
          letterSpacing: 0.0,
        ),
        headlineSmall: TextStyle(
          debugLabel: 'appTextTheme headlineSmall',
          color: color,
          fontSize: 24.0,
          fontWeight: FontWeight.w400,
          fontFamily: FontFamily.sfUi,
          textBaseline: TextBaseline.alphabetic,
          letterSpacing: 0.25,
        ),
        titleLarge: TextStyle(
          debugLabel: 'appTextTheme titleLarge',
          color: color,
          fontSize: 21.0,
          fontWeight: FontWeight.w700,
          fontFamily: FontFamily.sfUi,
          textBaseline: TextBaseline.alphabetic,
          letterSpacing: 0.0,
        ),
        titleMedium: TextStyle(
          debugLabel: 'appTextTheme titleMedium',
          color: color,
          fontSize: 17.0,
          fontWeight: FontWeight.w400,
          fontFamily: FontFamily.sfUi,
          textBaseline: TextBaseline.alphabetic,
          letterSpacing: 0.15,
        ),
        titleSmall: TextStyle(
          debugLabel: 'appTextTheme titleSmall',
          color: color,
          fontSize: 15.0,
          fontWeight: FontWeight.w500,
          fontFamily: FontFamily.sfUi,
          textBaseline: TextBaseline.alphabetic,
          letterSpacing: 0.5,
        ),
        bodyLarge: TextStyle(
          debugLabel: 'appTextTheme bodyLarge',
          color: color,
          fontSize: 15.0,
          fontWeight: FontWeight.w700,
          fontFamily: FontFamily.sfUi,
          textBaseline: TextBaseline.alphabetic,
          letterSpacing: 0.25,
        ),
        bodyMedium: TextStyle(
          debugLabel: 'appTextTheme bodyMedium',
          color: color,
          fontSize: 15.0,
          fontWeight: FontWeight.w400,
          fontFamily: FontFamily.sfUi,
          textBaseline: TextBaseline.alphabetic,
          letterSpacing: 0.15,
        ),
        bodySmall: TextStyle(
          debugLabel: 'appTextTheme bodySmall',
          color: color,
          fontSize: 13.0,
          fontWeight: FontWeight.w400,
          fontFamily: FontFamily.sfUi,
          textBaseline: TextBaseline.alphabetic,
          letterSpacing: 0.1,
        ),
        labelLarge: TextStyle(
          debugLabel: 'appTextTheme labelLarge',
          color: color,
          fontSize: 15.0,
          fontWeight: FontWeight.w700,
          fontFamily: FontFamily.sfUi,
          textBaseline: TextBaseline.alphabetic,
          letterSpacing: 1.25,
        ),
        labelMedium: TextStyle(
          debugLabel: 'appTextTheme labelMedium',
          color: color,
          fontSize: 12.0,
          fontWeight: FontWeight.w400,
          fontFamily: FontFamily.sfUi,
          textBaseline: TextBaseline.alphabetic,
          letterSpacing: 0.4,
        ),
        labelSmall: TextStyle(
          debugLabel: 'appTextTheme labelSmall',
          color: color,
          fontSize: 11.0,
          fontWeight: FontWeight.w400,
          fontFamily: FontFamily.sfUi,
          textBaseline: TextBaseline.alphabetic,
          letterSpacing: 1.5,
        ),
      );
}
