import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:travel/widgets/category_tile.dart';

class CategoriesGrid extends StatelessWidget {
  const CategoriesGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(
            child: Padding(
              padding: EdgeInsets.only(left: 20, right: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Choose Category",
                    style: GoogleFonts.dmSans(fontWeight: FontWeight.bold),
                  ),
                  TextButton(onPressed: () {}, child: const Text("See All"))
                ],
              ),
            ),
          ),
          Container(
            height: 60,
            child: GridView(
              padding: EdgeInsets.only(left: 20, right: 10),
              scrollDirection: Axis.horizontal,
              gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: 70,
                mainAxisExtent: 140,
                mainAxisSpacing: 10,
                childAspectRatio: 2 / 3,
              ),
              children: [
                CategoryTile("Beach",
                    "https://www.pngkey.com/png/full/298-2985029_white-beach-icon-beach-icon-png-transparent.png"),
                CategoryTile("Mountain",
                    'https://www.pngfind.com/pngs/m/322-3223875_mountain-icon-free-mountain-icon-png-transparent-png.png'),
                CategoryTile("Desert",
                    'https://cdn-icons-png.flaticon.com/512/3937/3937309.png'),
              ],
            ),
          )
        ],
      ),
    );
  }
}
