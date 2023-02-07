import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:travel/widgets/popular_package_tile.dart';

class PopularPackageGrid extends StatelessWidget {
  const PopularPackageGrid({super.key});

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
                    "Popular Packages",
                    style: GoogleFonts.dmSans(fontWeight: FontWeight.bold),
                  ),
                  TextButton(onPressed: () {}, child: const Text("See All"))
                ],
              ),
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width * 0.94,
            child: Column(
              children: [
                PopularPackageTile(
                  title: "Kuta Resort",
                  price: 10000,
                  rating: 3,
                  desc:
                      "Lorem ipsum lorem shabnam Lorem ipsum lorem shabnamLorem ipsum lorem shabnamLorem ipsum lorem shabnamLorem ipsum lorem shabnamLorem ipsum lorem shabnamLorem ipsum lorem shabnamLorem ipsum lorem shabnamLorem ipsum lorem shabnamLorem ipsum lorem shabnamLorem ipsum lorem shabnamLorem ipsum lorem shabnamLorem ipsum lorem shabnamLorem ipsum lorem shabnamLorem ipsum lorem shabnam",
                  imageUrl:
                      "https://cf.bstatic.com/xdata/images/xphoto/max1440/48360989.jpg?k=9ef4c4a8cb55cf1c582a51613103dc59edcc53b025a4f465d8d57655241b46a8&o=",
                ),
                PopularPackageTile(
                  title: "Baga Resort",
                  price: 23900,
                  rating: 4,
                  desc:
                      "Lorem ipsum lorem shabnam Lorem ipsum lorem shabnamLorem ipsum lorem shabnamLorem ipsum lorem shabnamLorem ipsum lorem shabnamLorem ipsum lorem shabnamLorem ipsum lorem shabnamLorem ipsum lorem shabnamLorem ipsum lorem shabnamLorem ipsum lorem shabnamLorem ipsum lorem shabnamLorem ipsum lorem shabnamLorem ipsum lorem shabnamLorem ipsum lorem shabnamLorem ipsum lorem shabnam",
                  imageUrl:
                      "https://i.pinimg.com/originals/09/d8/36/09d836cff4484550a75c6155888dbbba.jpg",
                ),
                PopularPackageTile(
                  title: "IDK Resort",
                  price: 16000,
                  rating: 5,
                  desc:
                      "Lorem ipsum lorem shabnam Lorem ipsum lorem shabnamLorem ipsum lorem shabnamLorem ipsum lorem shabnamLorem ipsum lorem shabnamLorem ipsum lorem shabnamLorem ipsum lorem shabnamLorem ipsum lorem shabnamLorem ipsum lorem shabnamLorem ipsum lorem shabnamLorem ipsum lorem shabnamLorem ipsum lorem shabnamLorem ipsum lorem shabnamLorem ipsum lorem shabnamLorem ipsum lorem shabnam",
                  imageUrl:
                      "https://escales.ponant.com/wp-content/uploads/2020/12/plage.jpg",
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
