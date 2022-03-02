import 'package:flutter/material.dart';
import 'package:katana_design/controller/screenController.dart';
import 'package:katana_design/dashboard/categoriesPart.dart';
import 'package:katana_design/dashboard/jobsPart.dart';
import 'package:katana_design/dashboard/searchPart.dart';
import 'package:katana_design/models/users.dart';

class BodyPart extends StatefulWidget {
  const BodyPart({
    Key? key,
  }) : super(key: key);

  @override
  State<BodyPart> createState() => _BodyPartState();
}

class _BodyPartState extends State<BodyPart> {
  /* var users = List<Users>;
  @override
  void initState() {
    super.initState();
  }
*/
  @override
  Widget build(BuildContext context) {
    /* method().then((value) {
      setState(
        () {
          users = value;
          print("here2    " + users.toString());
        },
      );
    });*/

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 30.0),
      child: SingleChildScrollView(
        child: Column(
          children: [
            Column(
              children: [
                SearchPart(),
                SizedBox(height: 30),
                CategoriesPart(),
                SizedBox(height: 30),
                JobsPart(height: MediaQuery.of(context).size.height * 3 / 4),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

method() async {
  List<Users> users = await ScreenController.getIPAddress();
  print("method hna   " + users.toString());
}
