import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TopBar extends StatefulWidget {
  const TopBar({super.key});

  @override
  State<TopBar> createState() => _TopBarState();
}

class _TopBarState extends State<TopBar> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 20, bottom: 20),
          child: Text(
            "Where do you want to explore today?",
            style:
                GoogleFonts.dmSans(fontWeight: FontWeight.bold, fontSize: 28),
          ),
        ),
        SizedBox(
          width: MediaQuery.of(context).size.width * 0.9,
          height: MediaQuery.of(context).size.height * 0.06,
          child: TextField(
            cursorColor: Colors.grey,
            decoration: InputDecoration(
              hintText: "Search",
              prefixIcon: Icon(
                Icons.search,
                color: Colors.grey,
              ),
              focusColor: Colors.transparent,
              contentPadding: const EdgeInsets.only(left: 10),
              fillColor: const Color.fromARGB(255, 221, 221, 221),
              filled: true,
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide:
                    const BorderSide(color: Color.fromARGB(255, 221, 221, 221)),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide:
                    const BorderSide(color: Color.fromARGB(255, 221, 221, 221)),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
