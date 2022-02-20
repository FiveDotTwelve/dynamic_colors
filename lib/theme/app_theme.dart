import 'package:flutter/material.dart';
import 'package:material_you/theme/app_theme_data.dart';
import 'package:provider/provider.dart';

class AppTheme extends StatelessWidget {
  const AppTheme({
    Key? key,
    required this.themeData,
    required this.child,
  }) : super(key: key);

  final AppThemeData themeData;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Provider.value(
      value: themeData,
      child: child,
    );
  }

  static AppThemeData of(BuildContext context) => context.read();
}
