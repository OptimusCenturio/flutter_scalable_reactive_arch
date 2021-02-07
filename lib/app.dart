import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_scalable_reactive_arch/theme/custom_theme.dart';

import 'catalog/view/catalog_page.dart';
import 'theme/config.dart';

class MyApp extends StatefulWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State {
  @override
  void initState() {
    super.initState();

    // Set system theme brightness (light or dark) for the start
    var brightness = SchedulerBinding.instance.window.platformBrightness;
    currentTheme.isDark = brightness == Brightness.dark;

    // Listen to changes from `currentTheme` and trigger a widget rebuild
    currentTheme.addListener(() {
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: CustomTheme.lightTheme,
      darkTheme: CustomTheme.darkTheme,
      themeMode: currentTheme.currentTheme,
      home: CatalogPage(title: 'Flutter Demo Catalog Page'),
      debugShowCheckedModeBanner: false,
    );
  }
}
