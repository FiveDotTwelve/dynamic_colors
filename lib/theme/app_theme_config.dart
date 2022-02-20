import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:material_you/model/dto/app_theme_config_dto.dart';
import 'package:material_you/theme/style_type.dart';

class AppThemeConfig extends Equatable {
  const AppThemeConfig({
    required this.type,
    required this.mode,
  });

  AppThemeConfig.fromDto(AppThemeConfigDto? dto)
      : this(
          type: dto?.type ?? AppThemeType.normal,
          mode: dto?.mode ?? ThemeMode.system,
        );

  final AppThemeType type;
  final ThemeMode mode;

  @override
  List<Object?> get props => [type, mode];

  AppThemeConfig copyWith({
    AppThemeType? type,
    ThemeMode? mode,
  }) {
    return AppThemeConfig(
      type: type ?? this.type,
      mode: mode ?? this.mode,
    );
  }
}
