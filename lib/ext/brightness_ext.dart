import 'dart:ui';

extension BrightnessExt on Brightness {
  Brightness get reverse => isDark ? Brightness.light : Brightness.dark;

  bool get isDark => this == Brightness.dark;

  bool get isLight => this == Brightness.light;
}
