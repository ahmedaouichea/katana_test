import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';
import 'package:katana_design/dashboard/jobsPart.dart';
import 'package:katana_design/dashboard/searchPart.dart';
import 'package:katana_design/dashboard/tipspart.dart';
import 'package:katana_design/widgets/custom_icon.dart';
import 'cardPart.dart';
import 'categoriesPart.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return PlatformScaffold(
        appBar: PlatformAppBar(
          material: (_, __) => appBarAndroid(),
          leading: PlatformIconButton(
            icon: PlatformIconButton(
                materialIcon: Icon(Icons.info),
                cupertinoIcon: Icon(
                  CupertinoIcons.add,
                  size: 28.0,
                ),
                onPressed: () {}),
          ),
          cupertino: (_, __) =>
              CupertinoNavigationBarData(title: Text("click me")),
        ),
        body: buildContent(),
        iosContentBottomPadding: false,
        backgroundColor: Colors.white);
  }

  MaterialAppBarData appBarAndroid() {
    return MaterialAppBarData(
      titleSpacing: 2,
      elevation: 0,
      backgroundColor: Colors.white,
      title: const Text(
        "Hello, Ahmed !",
        style: TextStyle(color: Colors.black),
      ),
      leading: CustomIcon(
        icon: Icons.search,
        containerPadding: const EdgeInsets.all(8),
        containerColor: Color(0xFF548FFF),
        iconColor: Colors.white,
      ),
      actions: [
        CustomIcon(
          icon: Icons.notifications,
          containerPadding: const EdgeInsets.all(8),
          containerColor: const Color(0xFFE5EDFF),
          iconColor: const Color(0xff2972FF),
        ),
      ],
    );
  }
}

class bottomNav extends StatelessWidget {
  const bottomNav({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.business),
          label: 'Business',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.school),
          label: 'School',
        ),
      ],
      showUnselectedLabels: false,
      currentIndex: 0,
      selectedItemColor: Color(0xFF4081FF),
      onTap: null,
      elevation: 0,
    );
  }
}

class buildContent extends StatelessWidget {
  const buildContent({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 30.0),
      child: SingleChildScrollView(
        child: Column(
          children: [
            SearchPart(),
            SizedBox(height: 30),
            TipsPart(title: "Tips for you"),
            SizedBox(height: 30),
            CardPart(),
            SizedBox(height: 30),
            TipsPart(title: "Job Recommendation"),
            SizedBox(height: 30),
            CategoriesPart(),
            SizedBox(height: 20),
            JobsPart(),
          ],
        ),
      ),
    );
  }
}
