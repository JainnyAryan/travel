import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';

class PlaceDescriptionScreen extends StatelessWidget {
  final String title;
  final String location;
  final String imgUrl;
  final String desc;
  final double rating;
  final double price;
  final bool isFav;

  PlaceDescriptionScreen({
    required this.title,
    required this.location,
    required this.desc,
    required this.rating,
    required this.price,
    required this.isFav,
    required this.imgUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: NetworkImage(imgUrl), fit: BoxFit.cover)),
        child: SafeArea(
          child: Stack(
            children: [
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      icon: const Icon(
                        Icons.arrow_back,
                        color: Colors.white,
                      ),
                    ),
                    FavButton(isFav: isFav),
                  ],
                ),
              ),
              Positioned(
                bottom: 0,
                child: Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        Colors.transparent,
                        Color.fromARGB(204, 0, 0, 0),
                        Color.fromARGB(156, 0, 0, 0),
                      ],
                      end: Alignment.bottomCenter,
                      begin: Alignment.topCenter,
                    ),
                  ),
                  width: MediaQuery.of(context).size.width,
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            title,
                            style: GoogleFonts.dmSans(
                                fontSize: 27,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                          Row(
                            children: [
                              const Padding(
                                padding: EdgeInsets.only(right: 5.0),
                                child: Icon(
                                  Icons.location_pin,
                                  size: 18,
                                  color: Colors.white,
                                ),
                              ),
                              Text(
                                location,
                                style: GoogleFonts.dmSans(
                                    color: Colors.white, fontSize: 16),
                              ),
                            ],
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 30.0),
                        child: Text(
                          desc,
                          overflow: TextOverflow.ellipsis,
                          softWrap: true,
                          maxLines: 6,
                          style: GoogleFonts.dmSans(color: Colors.white),
                        ),
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
                            "${rating}/5",
                            style: GoogleFonts.dmSans(
                                color: Colors.white, fontSize: 14),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            " ₹ ${price.ceil()} / person",
                            style: GoogleFonts.dmSans(
                                fontWeight: FontWeight.w600,
                                fontSize: 16,
                                color: Colors.white),
                          ),
                          ElevatedButton(
                            onPressed: () {},
                            style: ButtonStyle(
                              shape: MaterialStateProperty.all(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10)),
                              ),
                              backgroundColor: MaterialStateProperty.all(
                                const Color.fromARGB(255, 245, 220, 0),
                              ),
                            ),
                            child: Text(
                              "Book Now",
                              style: GoogleFonts.dmSans(
                                color: Colors.black,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class FavButton extends StatefulWidget {
  FavButton({
    Key? key,
    required this.isFav,
  }) : super(key: key);

  bool isFav;

  @override
  State<FavButton> createState() => _FavButtonState();
}

class _FavButtonState extends State<FavButton> {
  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        setState(() {
          widget.isFav = !widget.isFav;
        });
      },
      icon: Icon(
        widget.isFav ? Icons.favorite : Icons.favorite_border_outlined,
        color: Colors.white,
      ),
    );
  }
}
