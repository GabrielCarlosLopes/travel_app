import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:travel_app/constants.dart';
import 'package:travel_app/models/people.dart';

class ListPopularTravelers extends StatelessWidget {
  const ListPopularTravelers({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<People> peoples = [
      People(
        name: 'Jane Foster',
        image: 'Assets/dmitriy-k-qDqlU6IwtoA-unsplash.jpg',
        like: 2.5,
        country: 'Canada',
      ),
      People(
        name: 'Anne Marie',
        image: 'Assets/harry-shelton-x3bS-vszl5Y-unsplash.jpg',
        like: 2.5,
        country: 'Australia',
      ),
      People(
        name: 'John Mill',
        image: 'Assets/rooted-studio-VG7ZLPU4P44-unsplash.jpg',
        like: 2.5,
        country: 'China',
      ),
      People(
        name: 'Beatriz Silva',
        image: 'Assets/alex-shaw-qHzJJvpHBMg-unsplash.jpg',
        like: 2.5,
        country: 'Brazil',
      ),
    ];

    Size size = MediaQuery.of(context).size;
    return Container(
        width: size.width,
        height: size.height * .25,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 25.0, right: 25.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Popular\nTravelers',
                    style: GoogleFonts.nunitoSans(
                      textStyle: TextStyle(
                        color: darkGreen,
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                  ),
                  Text(
                    'See all',
                    style: GoogleFonts.nunitoSans(
                      textStyle: TextStyle(
                        color: darkGreen,
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(left: 25.0),
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: peoples.length,
                  itemBuilder: (context, index) {
                    final exactPeople = peoples[index];

                    return _myCard(size, exactPeople);
                  },
                ),
              ),
            ),
          ],
        ));
  }

  Card _myCard(Size size, People people) {
    return Card(
      color: anotherWhite,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
      ),
      child: Container(
        width: size.width * .3,
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage(
                          people.image,
                        ),
                      ),
                    ),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.favorite_outline,
                        size: 18,
                        color: darkGreen,
                      ),
                      Text(
                        '${people.like}k',
                        style: GoogleFonts.nunitoSans(
                          textStyle: TextStyle(
                            color: darkGreen,
                            fontSize: 9,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 8),
              Text(
                people.name,
                style: GoogleFonts.nunitoSans(
                  textStyle: TextStyle(
                    color: darkGreen,
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                  ),
                ),
              ),
              Text(
                people.country,
                style: GoogleFonts.nunitoSans(
                  textStyle: TextStyle(
                    color: darkGreen,
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
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
