import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:material_you/alias.dart';
import 'package:material_you/theme/color/app_color_scheme.dart';
import 'package:material_you/theme/shape/app_shape_scheme.dart';
import 'package:material_you/theme/text/app_text_theme.dart';
import 'package:material_you/theme/text/app_typography.dart';

@immutable
class AppThemeData extends Equatable {
  const AppThemeData({
    required this.colorScheme,
    required this.typography,
    required this.textTheme,
    required this.shapeScheme,
    required this.materialThemeData,
  });

  final AppColorScheme colorScheme;
  final AppTypography typography;
  final AppTextTheme textTheme;
  final AppShapeScheme shapeScheme;
  final MaterialThemeData materialThemeData;

  @override
  List<Object?> get props => [
        colorScheme,
        typography,
        textTheme,
        shapeScheme,
        materialThemeData,
      ];
}
