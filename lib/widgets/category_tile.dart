import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CategoryTile extends StatelessWidget {
  final String title;
  final String imgUrl;
  CategoryTile(this.title, this.imgUrl);
  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
        decoration: BoxDecoration(
            border: Border.all(width: 1, color: Colors.grey),
            borderRadius: BorderRadius.circular(10)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.network(
              imgUrl,
              height: 40,
              fit: BoxFit.cover,
            ),
            Text(
              title,
              style: GoogleFonts.dmSans(fontSize: 15),
            ),
          ],
        ),
      ),
    );
  }
}
