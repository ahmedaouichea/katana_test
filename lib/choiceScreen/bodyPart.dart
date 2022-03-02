import 'package:flutter/material.dart';
import 'package:katana_design/categories/boxesPart.dart';
import 'package:katana_design/widgets/custom_icon.dart';

class BodyPart extends StatelessWidget {
  const BodyPart({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          flex: 4,
          child: Row(
            children: [
              Expanded(
                child: Container(
                  child: Image.asset(
                    'assets/katana_digital_logo.jpg',
                    height: 230,
                    width: 230,
                    fit: BoxFit.contain,
                  ),
                ),
              )
            ],
          ),
        ),
        Expanded(
          flex: 3,
          child: Column(
            children: [
              //SizedBox(height: 30),

              Expanded(
                child: CustomIcon(
                  containerColor: Colors.white,
                  containerPadding: EdgeInsets.all(0),
                  containerHeight: 50,
                  containerWeight: 50,
                  iconSize: 35,
                  iconPadding: EdgeInsets.all(0),
                  icon: Icons.contacts,
                ),
              ),
              //SizedBox(height: 20),
              Expanded(
                child: Container(
                  child: Text("What job are you looking for"),
                ),
              ),
              //SizedBox(height: 20),
              Expanded(
                flex: 2,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Column(
                    children: [
                      Expanded(
                        flex: 1,
                        child: BoxesPart(),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
