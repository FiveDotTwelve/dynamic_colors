import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:material_you/app.dart';
import 'package:material_you/factory/app_theme_factory.dart';
import 'package:material_you/theme/style_type.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized()
      .renderView
      .automaticSystemUiAdjustment = false;

  await SystemChrome.setEnabledSystemUIMode(SystemUiMode.edgeToEdge);

  const overlayStyle = SystemUiOverlayStyle(
    statusBarIconBrightness: Brightness.dark,
    statusBarColor: Colors.transparent,
    systemNavigationBarColor: Colors.transparent,
  );
  SystemChrome.setSystemUIOverlayStyle(overlayStyle);

  final lightThemeData = await AppThemeFactory.create(
    AppThemeType.normal,
    isDark: false,
  );
  final darkThemeData = await AppThemeFactory.create(
    AppThemeType.normal,
    isDark: true,
  );

  runApp(
    App(
      lightThemeData: lightThemeData,
      darkThemeData: darkThemeData,
    ),
  );
}
