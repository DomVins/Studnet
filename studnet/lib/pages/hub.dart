import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import '../constants/colors.dart';
import '../temporary_data/temporary_data.dart';

import '../models/models.dart';

class Gallery extends StatelessWidget {
  const Gallery({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SafeArea(
            child: Row(
              children: [
                const SizedBox(
                  width: 10,
                ),
                Image.asset(
                  'assets/icons/logo.png',
                  height: 45,
                  width: 45,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 8.0, left: 4.0),
                  child: Text(
                    "Hub",
                    style: TextStyle(
                        fontFamily: "Alkatra",
                        color: appColor,
                        fontSize: 26,
                        letterSpacing: 0.5),
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: 0.6,
            margin: const EdgeInsets.only(top: 4),
            width: double.maxFinite,
            decoration: const BoxDecoration(color: Colors.grey),
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  const SizedBox(
                    height: 30,
                  ),
                  Container(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      child: StaggeredGrid.count(
                          crossAxisCount: 2,
                          mainAxisSpacing: 8,
                          crossAxisSpacing: 8,
                          children: hubProcessor(hubItems)))
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

hubProcessor(List<HubObject> items) {
  List<Widget> temp = [];
  for (int i = 0; i < items.length; i++) {
    temp.add(hubItem(items[i]));
  }
  return temp;
}

Widget hubItem(HubObject item) {
  return Container(
    decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: appColor, width: 0.4),
        boxShadow: [const BoxShadow(color: Colors.grey, blurRadius: 2.0)],
        borderRadius: BorderRadius.circular(10)),
    child: Material(
      color: Colors.transparent,
      child: InkWell(
        customBorder: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        onTap: (() {}),
        child: Container(
          margin: EdgeInsets.all(12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                item.title,
                overflow: TextOverflow.ellipsis,
                maxLines: 2,
                softWrap: false,
                style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    color: Color.fromARGB(255, 39, 39, 39)),
              ),
              const SizedBox(
                height: 8,
              ),
              Text(
                item.description,
                // overflow: TextOverflow.ellipsis,
                softWrap: true,
                style: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: Color.fromARGB(255, 99, 99, 99)),
              ),
            ],
          ),
        ),
      ),
    ),
  );
}
