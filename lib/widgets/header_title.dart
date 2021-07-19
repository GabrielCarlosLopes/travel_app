import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:travel_app/constants.dart';

class HeaderTitle extends StatelessWidget {
  const HeaderTitle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25.0, right: 25.0),
      child: RichText(
        text: TextSpan(
          style: GoogleFonts.nunitoSans(
            textStyle: TextStyle(
              color: black,
              fontSize: 34,
              fontWeight: FontWeight.bold,
            ),
          ),
          children: [
            TextSpan(
              text: 'A trip you\'all\n',
            ),
            TextSpan(
              text: 'never ',
              style: GoogleFonts.nunitoSans(
                textStyle: TextStyle(
                  fontSize: 38,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            TextSpan(
              text: 'forget.',
              style: GoogleFonts.nunitoSans(
                textStyle: TextStyle(
                  fontSize: 38,
                  color: greenLight,
                  fontWeight: FontWeight.bold,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
