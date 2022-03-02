import 'package:flutter/material.dart';
import 'package:katana_design/widgets/custom_icon.dart';

class SearchPart extends StatelessWidget {
  const SearchPart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Expanded(
        flex: 1,
        child: Container(
          height: 45,
          decoration: BoxDecoration(
            color: const Color(0xFFE5EDFF),
            borderRadius: BorderRadius.circular(20),
          ),
          child: TextFormField(
            decoration: const InputDecoration(
              contentPadding: EdgeInsets.symmetric(horizontal: 20),
              labelText: "Search",
              suffixIcon: Icon(Icons.search),
              border: InputBorder.none,
            ),
          ),
        ),
      ),
      Container(
        child: CustomIcon(
          icon: Icons.filter_list,
          containerPadding: const EdgeInsets.only(left: 20),
          containerColor: const Color(0xFFE5EDFF),
          iconColor: const Color(0xff2972FF),
        ),
      )
    ]);
  }
}
