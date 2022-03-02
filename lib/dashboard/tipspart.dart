import 'package:flutter/material.dart';

class TipsPart extends StatelessWidget {
  final String title;
  const TipsPart({
    Key? key,
    this.title = "",
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      Text(
        title,
        style: TextStyle(
            color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
      ),
      Text("See All",
          style: TextStyle(
              color: Color(0xFF548FFF),
              fontSize: 17,
              fontWeight: FontWeight.bold)),
    ]);
  }
}
