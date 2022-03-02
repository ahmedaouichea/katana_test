import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:katana_design/categories/categories.dart';
import 'package:katana_design/choiceScreen/choiceScreen.dart';
import 'package:katana_design/screen/screen.dart';
import 'dashboard/home.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return PlatformApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      cupertino: (_, __) => CupertinoAppData(
          theme: CupertinoThemeData(brightness: Brightness.light)),
      home: Screen(),
    );
  }
}
