import 'package:flutter/material.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';
import 'package:katana_design/widgets/custom_icon.dart';

MaterialAppBarData androidAppBar(title) {
  return MaterialAppBarData(
    title: Text(
      title,
      style: TextStyle(
        color: Colors.black,
        fontSize: 20,
        fontWeight: FontWeight.bold,
      ),
    ),
    backgroundColor: Colors.white,
    elevation: 0,
    leading: CustomIcon(
      icon: Icons.arrow_back_ios_new,
      containerPadding: const EdgeInsets.all(8),
      containerColor: Color(0xFFEAF1FF),
      iconColor: Color(0xFF548FFF),
      iconSize: 20,
    ),
  );
}
