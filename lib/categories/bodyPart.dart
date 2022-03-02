import 'package:flutter/material.dart';
import 'package:katana_design/widgets/custom_button.dart';

import 'boxesPart.dart';

class BodyPart extends StatelessWidget {
  const BodyPart({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
      child: Column(
        children: [
          Text(
            "Choose 3-5 job categories and we'll optimize the job vacancy for you.",
            style: TextStyle(height: 1.6),
          ),
          SizedBox(height: 20),
          Expanded(
            child: BoxesPart(),
          ),
          Row(
            children: [
              Expanded(
                child: Custom_Button(title: "Next"),
              )
            ],
          )
        ],
      ),
    );
  }
}
