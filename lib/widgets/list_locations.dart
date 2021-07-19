import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:travel_app/constants.dart';
import 'package:travel_app/location_details.dart';
import 'package:travel_app/models/location.dart';

class ListLocation extends StatelessWidget {
  const ListLocation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    List<Location> location = [
      Location(
        name: 'A Grande Montanha',
        country: 'Argentina',
        description:
            'Do sint tempor mollit adipisicing sunt aute laborum reprehenderit qui amet do enim sit. Cillum minim proident officia esse officia do dolor aute qui et laborum aliquip ad. Mollit commodo culpa sint cillum consequat ut cupidatat consectetur ea est pariatur id incididunt nostrud. Laboris cupidatat non ullamco consectetur consectetur.',
        price: 550,
        liked: false,
        ranking: 4.9,
        image: 'Assets/jakob-rosen-XUO119OlcEU-unsplash.jpg',
      ),
      Location(
        name: 'A Grande Montanha',
        country: 'Brazil',
        description:
            'Aliquip proident magna mollit est labore reprehenderit eu. Sunt excepteur mollit sunt laboris occaecat velit. Magna quis laborum consectetur ex culpa id incididunt.',
        price: 550,
        liked: false,
        ranking: 4.9,
        image: 'Assets/daniela-izotenko-hOhlYhAiizc-unsplash.jpg',
      ),
      Location(
        name: 'A Grande Montanha',
        country: 'EUA',
        description:
            'Do sint tempor mollit adipisicing sunt aute laborum reprehenderit qui amet do enim sit. Cillum minim proident officia esse officia do dolor aute qui et laborum aliquip ad. Mollit commodo culpa sint cillum consequat ut cupidatat consectetur ea est pariatur id incididunt nostrud. Laboris cupidatat non ullamco consectetur consectetur.',
        price: 550,
        liked: false,
        ranking: 4.9,
        image: 'Assets/charly-pn-57-x9zCyXJo-unsplash.jpg',
      ),
    ];

    return Expanded(
      child: Padding(
        padding: const EdgeInsets.only(left: 25.0),
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: location.length,
          itemBuilder: (context, index) {
            final nowLocation = location[index];

            return _myCard(size, nowLocation, context);
          },
        ),
      ),
    );
  }

  GestureDetector _myCard(Size size, Location location, BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => LocationDetails(location: location),
          ),
        );
      },
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 10),
        width: size.width * 0.5,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage(location.image),
          ),
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 18, left: 110),
              child: _ranking(location.ranking.toString()),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8, top: 100),
              child: Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      location.name,
                      style: GoogleFonts.nunitoSans(
                        textStyle: TextStyle(
                          fontSize: 12,
                          color: white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    SizedBox(height: 5),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SvgPicture.asset(
                          'Assets/map_pin.svg',
                          width: 10,
                        ),
                        SizedBox(width: 8),
                        Text(
                          location.country,
                          style: GoogleFonts.nunitoSans(
                            textStyle: TextStyle(
                              color: white,
                              fontWeight: FontWeight.bold,
                              fontSize: 10,
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Container _ranking(String pontuation) {
    return Container(
      height: 24,
      width: 52,
      decoration: BoxDecoration(
        color: greenLight,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Icon(
            Icons.star,
            size: 12,
            color: white,
          ),
          Text(
            pontuation,
            style: GoogleFonts.nunitoSans(
              textStyle: TextStyle(
                color: white,
                fontWeight: FontWeight.bold,
                fontSize: 12,
              ),
            ),
          )
        ],
      ),
    );
  }
}
