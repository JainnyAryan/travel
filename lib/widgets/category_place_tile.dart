import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:travel/screens/place_description_screen.dart';

class CategoryPlaceTile extends StatefulWidget {
  final String title;
  final String imgUrl;
  final String location;
  final String desc;
  final double rating;
  final double price;
  bool isFavorite;
  CategoryPlaceTile({
    required this.title,
    required this.imgUrl,
    required this.location,
    required this.rating,
    required this.isFavorite,
    required this.desc,
    required this.price,
  });

  @override
  State<CategoryPlaceTile> createState() => _CategoryPlaceTileState();
}

class _CategoryPlaceTileState extends State<CategoryPlaceTile> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(15),
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => PlaceDescriptionScreen(
                title: widget.title,
                location: widget.location,
                desc: widget.desc,
                rating: widget.rating,
                price: widget.price,
                isFav: widget.isFavorite,
                imgUrl: widget.imgUrl,),
          ),
        );
      },
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        child: Stack(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child:
                  Image.network(fit: BoxFit.cover, height: 500, widget.imgUrl),
            ),
            Positioned(
              right: 10,
              top: 10,
              child: CircleAvatar(
                backgroundColor: Colors.white,
                child: IconButton(
                  onPressed: () {
                    setState(() {
                      widget.isFavorite = !widget.isFavorite;
                    });
                  },
                  icon: Icon(widget.isFavorite
                      ? Icons.favorite_rounded
                      : Icons.favorite_border_rounded),
                  color: widget.isFavorite ? Colors.red : Colors.black,
                ),
              ),
            ),
            Positioned(
              left: 10,
              bottom: 10,
              child: Container(
                margin: EdgeInsets.only(bottom: 3),
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.black.withOpacity(0.5),
                ),
                width: MediaQuery.of(context).size.width * 0.55,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 10),
                      child: Text(
                        widget.title,
                        overflow: TextOverflow.clip,
                        style: GoogleFonts.dmSans(
                            color: Colors.white, fontSize: 18),
                      ),
                    ),
                    Row(
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(right: 5.0),
                          child: Icon(
                            Icons.location_pin,
                            size: 16,
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          widget.location,
                          style: GoogleFonts.dmSans(
                              color: Colors.white, fontSize: 14),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(right: 5.0),
                          child: Icon(
                            Icons.star,
                            size: 16,
                            color: Color.fromARGB(255, 255, 208, 0),
                          ),
                        ),
                        Text(
                          "${widget.rating}/5",
                          style: GoogleFonts.dmSans(
                              color: Colors.white, fontSize: 14),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
