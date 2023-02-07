
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../widgets/categories_grid.dart';
import '../widgets/category_places_grid.dart';
import '../widgets/popular_package_grid.dart';
import '../widgets/top_bar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   toolbarHeight: 70,
      //   centerTitle: true,
      //   actions: [
      //     IconButton(
      //       onPressed: () {},
      //       icon: const Icon(
      //         Icons.notifications,
      //         color: Colors.grey,
      //       ),
      //     ),
      //   ],
      //   title: Text(
      //     "Hello, Vineetha",
      //     style: GoogleFonts.mulish(
      //       fontWeight: FontWeight.bold,
      //       color: Colors.black,
      //       fontSize: 15,
      //     ),
      //   ),
      //   leading: const Padding(
      //     padding: EdgeInsets.symmetric(horizontal: 8),
      //     child: CircleAvatar(
      //       backgroundColor: Colors.grey,
      //     ),
      //   ),
      //   backgroundColor: Colors.transparent,
      //   elevation: 0,
      // ),
      body: CustomScrollView(
        slivers: [
          SliverAppBar(toolbarHeight: 70,
            centerTitle: true,
            actions: [
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.notifications,
                  color: Colors.grey,
                ),
              ),
            ],
            title: Text(
              "Hello, Vineetha",
              style: GoogleFonts.mulish(
                fontWeight: FontWeight.bold,
                color: Colors.black,
                fontSize: 15,
              ),
            ),
            leading: const Padding(
              padding: EdgeInsets.symmetric(horizontal: 8),
              child: CircleAvatar(
                backgroundColor: Colors.grey,
              ),
            ),
            backgroundColor: Colors.transparent,
            elevation: 0,
          ),
          SliverList(
              delegate: SliverChildListDelegate([
            TopBar(),
            CategoriesGrid(),
            Padding(
              padding: EdgeInsets.only(top: 20),
              child: CategoryPlacesGrid(),
            ),
            PopularPackageGrid(),
          ]))
        ],
        // child: Column(
        //   children: const [],
        // ),
      ),
    );
  }
}
