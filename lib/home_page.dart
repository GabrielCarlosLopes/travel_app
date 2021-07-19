import 'package:flutter/material.dart';
import 'package:travel_app/constants.dart';
import 'package:travel_app/widgets/app_bar.dart';
import 'package:travel_app/widgets/categories_row.dart';
import 'package:travel_app/widgets/header_title.dart';
import 'package:travel_app/widgets/list_locations.dart';
import 'package:travel_app/widgets/list_popular_travelers.dart';
import 'package:travel_app/widgets/search_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: white,
      body: SafeArea(
        child: Container(
          height: size.height,
          width: size.width,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              MyAppBar(),
              HeaderTitle(),
              SizedBox(height: 5),
              SearchBar(),
              SizedBox(height: 5),
              CategoriesRow(),
              SizedBox(height: 5),
              ListLocation(),
              SizedBox(height: 15),
              ListPopularTravelers(),
              SizedBox(height: 10),
            ],
          ),
        ),
      ),
    );
  }
}
