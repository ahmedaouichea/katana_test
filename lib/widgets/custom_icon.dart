import 'package:flutter/material.dart';

class CustomIcon extends StatelessWidget {
  final IconData icon;
  final EdgeInsets containerPadding;
  final Color containerColor;
  final double borderRadius;
  final double containerHeight;
  final double containerWeight;
  final EdgeInsets iconPadding;
  final Color iconColor;
  final double iconSize;

  CustomIcon({
    required this.icon,
    this.containerPadding = const EdgeInsets.all(0.0),
    this.containerColor = const Color(0xFFEAF1FF),
    this.borderRadius = 8,
    this.containerHeight = 45,
    this.containerWeight = 45,
    this.iconPadding = const EdgeInsets.all(0.0),
    this.iconColor = const Color(0xFF548FFF),
    this.iconSize = 25,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: containerPadding,
      child: Container(
        height: containerHeight,
        width: containerHeight,
        decoration: BoxDecoration(
            color: containerColor,
            borderRadius: BorderRadius.circular(borderRadius)),
        child: Padding(
          padding: iconPadding,
          child: IconButton(
              icon: Icon(
                icon,
                color: iconColor,
                size: iconSize,
              ),
              onPressed: () {}),
        ),
      ),
    );
  }
}
