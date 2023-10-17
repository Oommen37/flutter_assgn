import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MaterialApp(
    home: Hoteldetails(),
    debugShowCheckedModeBanner: false,
  ));
}

class Hoteldetails extends StatelessWidget {
  String text =
      '''\n\n\n\n\n\nLe Méridien is an upscale, design-focused international hotel brand with a European perspective. \nIt was originally founded by Air France in 1972 and was later based in the United Kingdom. Marriott International now owns the chain. As of June 2021, it had a portfolio of 109 open hotels with 29,439 rooms and a pipeline of 37 hotels with 9,585 upcoming rooms.\nLe Méridien is an upscale, design-focused international hotel brand with a European perspective. \nIt was originally founded by Air France in 1972 and was later based in the United Kingdom. Marriott International now owns the chain. As of June 2021, it had a portfolio of 109 open hotels with 29,439 rooms and a pipeline of 37 hotels with 9,585 upcoming rooms.\nLe Méridien is an upscale, design-focused international hotel brand with a European perspective. \nIt was originally founded by Air France in 1972 and was later based in the United Kingdom. Marriott International now owns the chain. As of June 2021, it had a portfolio of 109 open hotels with 29,439 rooms and a pipeline of 37 hotels with 9,585 upcoming rooms.\nLe Méridien is an upscale, design-focused international hotel brand with a European perspective. \nIt was originally founded by Air France in 1972 and was later based in the United Kingdom. Marriott International now owns the chain. As of June 2021, it had a portfolio of 109 open hotels with 29,439 rooms and a pipeline of 37 hotels with 9,585 upcoming rooms.\nLe Méridien is an upscale, design-focused international hotel brand with a European perspective. \nIt was originally founded by Air France in 1972 and was later based in the United Kingdom. Marriott International now owns the chain. As of June 2021, it had a portfolio of 109 open hotels with 29,439 rooms and a pipeline of 37 hotels with 9,585 upcoming rooms.''';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 300.0),
          child: Container(
            height: double.infinity,
            width: double.infinity,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage(
                        'https://cf.bstatic.com/xdata/images/hotel/max1024x768/463615042.jpg?k=f433354d2a4de0529c59fa0e9f86a49a6134bdc07f4ab361abcaae6e7e53aa79&o=&hp=1'),
                    fit: BoxFit.cover)),
          ),
        ),
        Positioned(
            bottom: 350,
            left: 20,
            child: Text(
              '''Le Meridien\nKochi,Kerala
              ''',
              style: GoogleFonts.roboto(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  shadows: [
                    Shadow(
                        color: Colors.black,
                        blurRadius: 5,
                        offset: Offset(3, 3))
                  ]),
            )),
        Positioned(
          bottom: 345,
          left: 20,
          child: Container(
            height: 35,
            width: 180,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50), color: Colors.grey),
          ),
        ),
        Positioned(
            bottom: 355,
            left: 60,
            child: Text(
              '8.4 / 85 reviews',
              style: TextStyle(color: Colors.white, fontSize: 15),
            )),
        Positioned(
            bottom: 320,
            right: 30,
            child: Icon(
              Icons.favorite_border,
              color: Colors.white,
              size: 35,
            )),
        Positioned(
            bottom: 270,
            left: 10,
            child: Icon(
              Icons.star,
              color: Colors.deepPurple,
            )),
        Positioned(
            bottom: 270,
            left: 35,
            child: Icon(
              Icons.star,
              color: Colors.deepPurple,
            )),
        Positioned(
            bottom: 270,
            left: 60,
            child: Icon(
              Icons.star,
              color: Colors.deepPurple,
            )),
        Positioned(
            bottom: 270,
            left: 85,
            child: Icon(
              Icons.star,
              color: Colors.deepPurple,
            )),
        Positioned(
            bottom: 270,
            left: 115,
            child: Icon(
              Icons.star,
              color: Colors.grey,
            )),
        Positioned(
            bottom: 240,
            left: 10,
            child: Icon(
              Icons.location_on,
              color: Colors.grey,
            )),
        Positioned(
            bottom: 245,
            left: 30,
            child: Text(
              '5km to Lulu mall',
              style: TextStyle(color: Colors.grey),
            )),
        Positioned(
            bottom: 270,
            right: 30,
            child: Text(
              '200\$',
              style: TextStyle(
                  color: Colors.deepPurple,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            )),
        Positioned(
            bottom: 250,
            right: 25,
            child: Text(
              '/per night',
              style: TextStyle(color: Colors.grey),
            )),
        Positioned(
          bottom: 170,
          child: Container(
            height: 60,
            width: 500,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(45),
                color: Colors.deepPurple),
            child: Center(
              child: Text(
                'Book now',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                    color: Colors.white),
              ),
            ),
          ),
        ),
        Positioned(
          bottom: 50,
          left: 20,
          child: Container(
            child: Text(
              text,
              style: TextStyle(fontSize: 15),
            ),
          ),
        )
      ],
    ));
  }
}
