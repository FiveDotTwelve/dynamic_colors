import 'package:flutter/material.dart';
import 'package:material_you/home_screen.dart';
import 'package:material_you/theme/app_theme.dart';
import 'package:material_you/theme/app_theme_data.dart';

class App extends StatelessWidget {
  const App({
    Key? key,
    required this.lightThemeData,
    required this.darkThemeData,
  }) : super(key: key);

  final AppThemeData lightThemeData;
  final AppThemeData darkThemeData;

  @override
  Widget build(BuildContext context) {
    const themeMode = ThemeMode.system;
    return MaterialApp(
      theme: lightThemeData.materialThemeData,
      darkTheme: darkThemeData.materialThemeData,
      themeMode: themeMode,
      home: const HomeScreen(),
      builder: (context, child) => AppOverlay(
        lightStyleData: lightThemeData,
        darkStyleData: darkThemeData,
        themeMode: themeMode,
        child: child ?? const Offstage(),
      ),
    );
  }
}

class AppOverlay extends StatelessWidget {
  const AppOverlay({
    Key? key,
    required this.lightStyleData,
    required this.darkStyleData,
    required this.themeMode,
    required this.child,
  }) : super(key: key);

  final AppThemeData lightStyleData;
  final AppThemeData darkStyleData;
  final ThemeMode themeMode;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return AppTheme(
      themeData: _useDarkStyle(context) ? darkStyleData : lightStyleData,
      child: child,
    );
  }

  bool _useDarkStyle(BuildContext context) {
    return themeMode == ThemeMode.dark ||
        (themeMode == ThemeMode.system &&
            MediaQuery.platformBrightnessOf(context) == Brightness.dark);
  }
}
