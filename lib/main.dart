import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:newproject/containers_class.dart';

import 'package:newproject/theme_services.dart';
import 'package:newproject/themes.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Calculator',
      theme: Themes.light,
      darkTheme: Themes.dark,
      themeMode: ThemeService().theme,
      home: ContainersClass(),
    );
  }
}
