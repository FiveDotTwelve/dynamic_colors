// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_theme_config_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AppThemeConfigDto _$AppThemeConfigDtoFromJson(Map<String, dynamic> json) =>
    AppThemeConfigDto(
      $enumDecodeNullable(_$AppThemeTypeEnumMap, json['type']),
      $enumDecodeNullable(_$ThemeModeEnumMap, json['mode']),
    );

Map<String, dynamic> _$AppThemeConfigDtoToJson(AppThemeConfigDto instance) =>
    <String, dynamic>{
      'type': _$AppThemeTypeEnumMap[instance.type],
      'mode': _$ThemeModeEnumMap[instance.mode],
    };

const _$AppThemeTypeEnumMap = {
  AppThemeType.normal: 'normal',
};

const _$ThemeModeEnumMap = {
  ThemeMode.system: 'system',
  ThemeMode.light: 'light',
  ThemeMode.dark: 'dark',
};
