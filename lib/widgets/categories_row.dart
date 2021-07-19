import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:travel_app/constants.dart';
import 'package:travel_app/models/button_category.dart';

class CategoriesRow extends StatefulWidget {
  CategoriesRow({Key? key}) : super(key: key);

  @override
  _CategoriesRowState createState() => _CategoriesRowState();
}

class _CategoriesRowState extends State<CategoriesRow> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25.0, right: 25.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          _buttonCategory(Button(title: 'All', fun: () {}, selected: true)),
          _buttonCategory(Button(title: 'New', fun: () {}, selected: false)),
          _buttonCategory(
              Button(title: 'Popular', fun: () {}, selected: false)),
          _buttonCategory(Button(title: 'Top 10', fun: () {}, selected: false)),
        ],
      ),
    );
  }

  TextButton _buttonCategory(Button button) {
    return TextButton(
      onPressed: button.fun,
      child: Text(
        button.title,
        style: GoogleFonts.nunitoSans(
          textStyle: TextStyle(
            fontSize: 22,
            color: button.selected ? greenLight : black,
            fontWeight: FontWeight.bold,
            decoration: button.selected
                ? TextDecoration.underline
                : TextDecoration.none,
          ),
        ),
      ),
    );
  }
}
