import 'package:flutter/material.dart';

class Custom_Button extends StatelessWidget {
  final String title;
  final Color color;
  final EdgeInsets contentPadding;
  final double borderRadius;

  const Custom_Button({
    Key? key,
    this.title = "Button Title",
    this.color = const Color(0xff4887ff),
    this.contentPadding = const EdgeInsets.symmetric(vertical: 13),
    this.borderRadius = 20.0,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      child: Text(title),
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all<Color>(
          color,
        ),
        padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
          contentPadding,
        ),
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(borderRadius),
          ),
        ),
      ),
    );
  }
}
