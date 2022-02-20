import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:material_you/ext/brightness_ext.dart';
import 'package:material_you/theme/color/app_color_scheme.dart';

enum SystemUiType { surface, background, primary }

@immutable
class SystemUi extends Equatable {
  const SystemUi._(this.iconsBrightness, this.type);

  const SystemUi.surface(Brightness status)
      : this._(status, SystemUiType.surface);

  const SystemUi.background(Brightness status)
      : this._(status, SystemUiType.background);

  const SystemUi.primary(Brightness status)
      : this._(status, SystemUiType.primary);

  final Brightness iconsBrightness;
  final SystemUiType type;

  SystemUiOverlayStyle fromColors(AppColorScheme colors) {
    final navigationBarColor = _getSystemNavigationBarColor(type, colors);
    final navigationBarIconBrightness =
        ThemeData.estimateBrightnessForColor(navigationBarColor).reverse;

    return SystemUiOverlayStyle(
      systemNavigationBarColor: Colors.transparent,
      systemNavigationBarContrastEnforced: false,
      systemStatusBarContrastEnforced: false,
      systemNavigationBarDividerColor: null,
      systemNavigationBarIconBrightness: navigationBarIconBrightness,
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: iconsBrightness,
      statusBarBrightness: iconsBrightness.reverse,
    );
  }

  Color _getSystemNavigationBarColor(
    SystemUiType type,
    AppColorScheme colors,
  ) {
    switch (type) {
      case SystemUiType.surface:
        return colors.surface;
      case SystemUiType.background:
        return colors.background;
      case SystemUiType.primary:
        return colors.primary;
    }
  }

  SystemUi copyWith({
    Brightness? iconsBrightness,
    SystemUiType? type,
  }) {
    return SystemUi._(
      iconsBrightness ?? this.iconsBrightness,
      type ?? this.type,
    );
  }

  @override
  List<Object?> get props => [iconsBrightness, type];
}
