import 'package:flutter/material.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';
import 'package:katana_design/widgets/appBar.dart';
import 'bodyPart.dart';

class Screen extends StatelessWidget {
  final String appBarTitle;
  const Screen({Key? key, this.appBarTitle = "Job Recommendation"})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PlatformScaffold(
      appBar: PlatformAppBar(
        material: (_, __) => androidAppBar(appBarTitle),
      ),
      body: BodyPart(),
    );
  }
}
