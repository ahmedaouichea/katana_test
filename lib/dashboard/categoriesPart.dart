import 'package:flutter/material.dart';

class CategoriesPart extends StatefulWidget {
  const CategoriesPart({
    Key? key,
  }) : super(key: key);

  @override
  State<CategoriesPart> createState() => _CategoriesPartState();
}

class _CategoriesPartState extends State<CategoriesPart> {
  List<String> categories = [
    "All Job",
    "Writer",
    "Design",
    "Finance",
    "Devloper"
  ];
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 30,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        itemBuilder: (context, index) => buildCategoryItem(categories, index),
      ),
    );
  }

  Widget buildCategoryItem(categories, index) {
    return Padding(
      padding: const EdgeInsets.only(right: 20),
      child: GestureDetector(
        onTap: () {
          setState(() {
            selectedIndex = index;
          });
        },
        child: Container(
          alignment: Alignment.center,
          padding: const EdgeInsets.symmetric(horizontal: 20),
          decoration: BoxDecoration(
              color: selectedIndex == index ? Color(0xFF2972FF) : Colors.white,
              borderRadius: BorderRadius.circular(15),
              border: Border.all(color: Colors.blue)),
          child: Text(
            categories[index],
            style: TextStyle(
              color: selectedIndex == index ? Colors.white : Color(0xFF2972FF),
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
