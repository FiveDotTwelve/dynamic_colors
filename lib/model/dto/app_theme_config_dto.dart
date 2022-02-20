import 'package:flutter/material.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:material_you/model/dto/dto.dart';
import 'package:material_you/theme/app_theme_config.dart';
import 'package:material_you/theme/style_type.dart';

part 'app_theme_config_dto.g.dart';

@JsonSerializable()
class AppThemeConfigDto extends Dto {
  AppThemeConfigDto(this.type, this.mode);

  AppThemeConfigDto.fromConfig(AppThemeConfig config)
      : this(config.type, config.mode);

  factory AppThemeConfigDto.fromJson(Map<String, dynamic> json) =>
      _$AppThemeConfigDtoFromJson(json);

  final AppThemeType? type;
  final ThemeMode? mode;

  @override
  List<Object?> get props => [type, mode];

  Map<String, dynamic> toJson() => _$AppThemeConfigDtoToJson(this);
}
