import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';

class PopularPackageTile extends StatefulWidget {
  final String title;
  final double price;
  final double rating;
  final String desc;
  final String imageUrl;

  PopularPackageTile({
    required this.title,
    required this.price,
    required this.rating,
    required this.desc,
    required this.imageUrl,
  });

  @override
  State<PopularPackageTile> createState() => _PopularPackageTileState();
}

class _PopularPackageTileState extends State<PopularPackageTile> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(height: MediaQuery.of(context).size.height * 0.25,
      child: Card(elevation: 4,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Row(
            children: [
              Container(
                margin: const EdgeInsets.only(right: 15),
                width: MediaQuery.of(context).size.width * 0.3,
                height: MediaQuery.of(context).size.height * 0.5,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Image.network(
                    widget.imageUrl,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 6.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      widget.title,
                      style: GoogleFonts.dmSans(
                          fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      " ₹ ${widget.price}",
                      style: GoogleFonts.dmSans(fontSize: 14, color: Colors.red),
                    ),
                    Row(
                      children: [
                        const Icon(
                          Icons.star,
                          size: 15,
                          color: Color.fromARGB(255, 255, 208, 0),
                        ),
                        Text(
                          "${widget.rating} / 5",
                          style: GoogleFonts.dmSans(
                              color: Colors.black, fontSize: 12),
                        ),
                      ],
                    ),
                    Container(
                        alignment: Alignment.bottomCenter,
                        width: 150,
                        height: 50,
                        child: Text(
                          widget.desc,
                          overflow: TextOverflow.ellipsis,
                          maxLines: 4,
                          softWrap: true,
                          style: GoogleFonts.dmSans(fontSize: 10),
                        ))
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
