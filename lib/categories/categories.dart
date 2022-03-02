import 'package:flutter/material.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';
import 'package:katana_design/widgets/appBar.dart';

import 'bodyPart.dart';

class Categories extends StatelessWidget {
  final String categoryTitle;
  const Categories({Key? key, this.categoryTitle = "What job you want"})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PlatformScaffold(
      appBar: PlatformAppBar(
        material: (_, __) => androidAppBar(categoryTitle),
      ),
      body: BodyPart(),
      backgroundColor: Colors.white,
      material: (_, __) => MaterialScaffoldData(extendBody: true),
    );
  }
}
