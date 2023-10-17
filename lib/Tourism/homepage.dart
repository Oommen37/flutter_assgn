import 'package:flutter/material.dart';
import 'package:flutter_assgn/Tourism/detailpage.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MaterialApp(
    home: Home(),
    debugShowCheckedModeBanner: false,
  ));
}

class Home extends StatelessWidget {
  var pics = [
    "assets/france.jpg",
    "assets/germany.jpg",
    "assets/india.jpg",
    "assets/italy.jpg"
  ];
  var names = ['France', 'Germany', 'India', 'Italy'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.deepPurple,
        ),
        body: ListView.builder(
            itemCount: 4,
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () {
                  if (index == 0) {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => DetailsPage()));
                  }
                },
                child: Stack(children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 10.0, bottom: 10),
                    child: Container(
                      height: 200, // Set the desired card image height
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(pics[index]),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                      bottom: 10,
                      left: 20,
                      child: Text(
                        names[index],
                        style: GoogleFonts.roboto(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            shadows: [
                              Shadow(
                                  color: Colors.black,
                                  offset: Offset(5, 5),
                                  blurRadius: 5)
                            ]),
                      ))
                ]),
              );
            }));
  }
}
