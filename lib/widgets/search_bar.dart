import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:travel_app/constants.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.only(left: 25.0, right: 25.0),
      child: Container(
        alignment: Alignment.center,
        height: size.height * 0.08,
        decoration: BoxDecoration(
          color: anotherWhite,
          borderRadius: BorderRadius.circular(22),
        ),
        child: Form(
          child: TextFormField(
            autocorrect: false,
            decoration: InputDecoration(
              hintStyle: GoogleFonts.nunitoSans(
                textStyle: TextStyle(
                  color: grey,
                ),
              ),
              hintText: 'Search your destination',
              prefixIcon: Icon(
                Icons.search,
                color: darkGreen,
              ),
              border: InputBorder.none,
            ),
          ),
        ),
      ),
    );
  }
}
